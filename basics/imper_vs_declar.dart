void main() {
  List<int> prices = [10, 90, 66, 77, 10, 290]; //without GST
  //GST 18%
  //Prices with GST
  //Imperative Style
  List<int> pricesWithGST = [];
  for (int i = 0; i < prices.length; i++) {
    int currentPrice = prices[i];
    int tax = (currentPrice * 0.18).toInt();
    int pricesWithTax = currentPrice + tax;
    pricesWithGST.add(pricesWithTax);
  }
  print("Orignal prices are $prices");
  print("prices with GTS are $pricesWithGST");

  //Declarative Style
  //Map - Traverse the orignal array & make a copy of the orignal array based on logic you have written
  //List<int> pricesWithGST1 =  prices.map((int currentPrice) => currentPrice + (currentPrice * 0.18).toInt()).toList();
  List<int> pricesWithGST1 = prices.map((int currentPrice) {
    if (currentPrice > 50) {
      return currentPrice + (currentPrice * 0.50).toInt();
    } else {
      return currentPrice + (currentPrice * 0.10).toInt();
    }
  }).toList();
  print("prices with GST are $pricesWithGST1");
}
