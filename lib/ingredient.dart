class Ingredient {
  String ingredient;
  double amount;
  double used;
  double price;
  double markup;

  Ingredient(this.ingredient, this.amount, this.used, this.price, this.markup);

  String get _ingredient => ingredient;

  double get _amount => amount;

  double get _used => used;

  double get _price => price;

  double get _markup => markup;
}
