class ContaBancaria<T> {

  List<T> investimentos = [];

  void addInvestimento(T investimento) {
    
    investimentos.add(investimento);
  }

}