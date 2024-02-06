class BudgetItem {
  String name;
  double price;
  double percentage;
  dynamic color;

  BudgetItem({
    required this.name,
    required this.price,
    required this.percentage,
    required this.color,
  });

  @override
  String toString() {
    return 'Name: $name, Price: $price, Percentage: $percentage, Color: $color';
  }
}
