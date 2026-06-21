import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

bool validarCPF(String cpf) {
// Remover caracteres indesejados

  cpf = cpf.replaceAll(RegExp(r'[^\d]'), '');
  //Remover hífen "-" e ponto "."
  cpf = cpf.replaceAll("-", "").replaceAll(".", "");
  if (cpf.length != 11) {
    return false;
  }

  // Verificar se todos os dígitos são iguais
  for (int i = 0; i < 10; i++) {
    if (new RegExp(r'^[$i]{11}$').hasMatch(cpf)) {
      return false;
    }
  }

  // Calcular o primeiro dígito verificador
  int sum = 0;
  for (int i = 0; i < 9; i++) {
    int weight = 10 - i;
    sum += int.parse(cpf[i]) * weight;
  }
  int firstCheckDigit = 11 - (sum % 11);
  if (firstCheckDigit >= 10) {
    firstCheckDigit = 0;
  }

  // Calcular o segundo dígito verificador
  sum = 0;
  for (int i = 0; i < 10; i++) {
    int weight = 11 - i;
    sum += int.parse(cpf[i]) * weight;
  }
  int secondCheckDigit = 11 - (sum % 11);
  if (secondCheckDigit >= 10) {
    secondCheckDigit = 0;
  }

  // Verificar se os dígitos verificadores calculados são iguais
  // aos dígitos verificadores fornecidos
  return (int.parse(cpf[9]) == firstCheckDigit) &&
      (int.parse(cpf[10]) == secondCheckDigit);
}

/// Calcula e formata o total dos itens no carrinho.
String? calcularTotalCarrinho(List<CatagolodigitalStruct>? itens) {
  final lista = itens ?? const <CatagolodigitalStruct>[];
  double total = 0;
  for (final item in lista) {
    total += item.preco * item.quantidade;
  }
  return 'R\$ ${total.toStringAsFixed(2).replaceAll('.', ',')}';
}

/// Formata um valor numerico como moeda brasileira.
String? formatarPrecoCarrinho(double? valor) {
  final preco = valor ?? 0;
  return 'R\$ ${preco.toStringAsFixed(2).replaceAll('.', ',')}';
}

/// Indica se o carrinho esta vazio.
bool? carrinhoVazio(List<CatagolodigitalStruct>? itens) {
  return itens == null || itens.isEmpty;
}

/// Filtra o catalogo local por busca e categoria sem chamar a API de
/// pesquisa.
List<CatagolodigitalStruct>? filtrarCatalogoCarrinho(
  List<CatagolodigitalStruct>? itens,
  String? query,
  String? categoria,
) {
  final lista = itens ?? const <CatagolodigitalStruct>[];
  final termo = (query ?? '').replaceAll('"', '').trim().toLowerCase();
  final filtroCategoria = (categoria ?? '').trim().toLowerCase();

  return lista.where((item) {
    final nome = item.nome.toLowerCase();
    final descricao = item.descricao.toLowerCase();
    final categoriaItem = item.categoria.toLowerCase();
    final bateBusca = termo.isEmpty ||
        nome.contains(termo) ||
        descricao.contains(termo) ||
        categoriaItem.contains(termo);
    final bateCategoria =
        filtroCategoria.isEmpty || categoriaItem.contains(filtroCategoria);
    return bateBusca && bateCategoria && item.disponivel;
  }).toList();
}

/// Retorna o total numerico do carrinho para APIs de pagamento.
double? calcularValorTotalCarrinho(List<CatagolodigitalStruct>? itens) {
  final lista = itens ?? const <CatagolodigitalStruct>[];
  double total = 0;
  for (final item in lista) {
    total += item.preco * item.quantidade;
  }
  return total;
}

/// Extrai o ID do pedido da resposta JSON do Xano.
int? extrairPedidoIdResposta(dynamic pedido) {
  final data = pedido;
  if (data is Map) {
    final value = data['id'] ?? data['id_pedido'] ?? data['pedido_id'];
    if (value is int) {
      return value;
    }
    if (value is num) {
      return value.toInt();
    }
    if (value is String) {
      return int.tryParse(value) ?? 0;
    }
  }
  return 0;
}

/// Extrai o ID do usuario da resposta JSON do Xano.
int? extrairUsuarioIdResposta(dynamic pedido) {
  final data = pedido;
  if (data is Map) {
    final value = data['id_usuario'] ??
        data['usuario_id'] ??
        data['user_id'] ??
        data['client_id'];
    if (value is int) {
      return value;
    }
    if (value is num) {
      return value.toInt();
    }
    if (value is String) {
      return int.tryParse(value) ?? 0;
    }
  }
  return 0;
}

int? slQuantidadeMaisUmProfissional(int? valor) {
  return (valor ?? 0) + 1;
}

bool? slQuantidadeMaiorQueUm(int? quantidade) {
  return (quantidade ?? 1) > 1;
}

double? slSomarTotalCarrinhoProfissional(
  double? total,
  double? preco,
  int? quantidade,
) {
  return (total ?? 0) + ((preco ?? 0) * (quantidade ?? 1));
}

double? subtrairTotalCarrinhoProfissional(
  double? total,
  double? preco,
  int? quantidade,
) {
  return (total ?? 0) - ((preco ?? 0) * (quantidade ?? 0));
}

double? slDoublePreferido(
  double? principal,
  double? fallback,
) {
  if (principal != null && principal > 0) return principal;
  return fallback ?? 0;
}

String? slPrecoFormatado(double? preco) {
  final valor = preco ?? 0;
  return 'R\$ ${valor.toStringAsFixed(2).replaceAll('.', ',')}';
}

/// Confirma se os dados minimos para iniciar pagamento existem.
bool? dadosPagamentoValidos(
  int? idUsuario,
  int? idPedido,
  double? valorTotal,
) {
  final usuarioValido = (idUsuario ?? 0) > 0;
  final pedidoValido = (idPedido ?? 0) > 0;
  final valorValido = (valorTotal ?? 0) > 0;
  return usuarioValido && pedidoValido && valorValido;
}

/// Mostra imagem Pix apenas quando o QR Code for uma URL.
bool? pixQrCodeEhUrl(String? valor) {
  final texto = (valor ?? '').trim().toLowerCase();
  return texto.startsWith('http://') || texto.startsWith('https://');
}

List<CatagolodigitalStruct>? adicionarProdutoCarrinhoLocal(
  List<CatagolodigitalStruct>? carrinho,
  CatagolodigitalStruct? produto,
  int? quantidade,
) {
  final lista = carrinho?.toList() ?? [];

  if (produto == null) {
    return lista;
  }

  final quantidadeAdicionar = (quantidade ?? 1) <= 0 ? 1 : quantidade!;

  final index = lista.indexWhere((item) => item.id == produto.id);

  if (index >= 0) {
    lista[index].quantidade = lista[index].quantidade + quantidadeAdicionar;
  } else {
    produto.quantidade = quantidadeAdicionar;
    lista.add(produto);
  }

  return lista;
}

/// Ajusta a quantidade de um produto no carrinho local.
List<CatagolodigitalStruct>? ajustarQuantidadeCarrinhoLocal(
  List<CatagolodigitalStruct>? carrinho,
  CatagolodigitalStruct? produto,
  int? delta,
) {
  final lista = carrinho?.toList() ?? [];

  if (produto == null || delta == null || delta == 0) {
    return lista;
  }

  final index = lista.indexWhere((item) => item.id == produto.id);
  if (index < 0) {
    return lista;
  }

  final novaQuantidade = lista[index].quantidade + delta;
  if (novaQuantidade <= 0) {
    lista.removeAt(index);
  } else {
    lista[index].quantidade = novaQuantidade;
  }

  return lista;
}
