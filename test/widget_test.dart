
import 'package:atividade2henriqwue/domain/CDB.dart';
import 'package:atividade2henriqwue/domain/CDI.dart';
import 'package:atividade2henriqwue/domain/ContaBancaria.dart';
import 'package:atividade2henriqwue/domain/TesouroDireto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('should add investimentos of diff types', () {

    final contaTesouroDireto = ContaBancaria<Tesourodireto>();

    contaTesouroDireto.addInvestimento(Tesourodireto());

    final contaCDI = ContaBancaria<CDI>();

    contaCDI.addInvestimento(CDI());

    final contaCDB = ContaBancaria<CDB>();

    contaCDB.addInvestimento(CDB());

    expect(contaTesouroDireto.investimentos.length, 1);
    expect(contaCDB.investimentos.length, 1);
    expect(contaCDI.investimentos.length, 1);
  });

}

