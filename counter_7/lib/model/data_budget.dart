class data_budget {
  static List<data_budget> budgets = [];
  String judul = "";
  int? nominal = 0;
  String jenis;
  DateTime date;

  data_budget({
    required this.judul,
    required this.nominal,
    required this.jenis,
    required this.date,
  });

  static void addBudget({
    required judul,
    required nominal,
    required jenis,
    required date,
  }) {
    budgets.add(data_budget(
      judul: judul,
      nominal: nominal,
      jenis: jenis,
      date: date,
    ));
  }
}
