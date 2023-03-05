class Cryptocurrency {
  final String name;
  final String symbol;
  final String address;
  final int decimals;
  final String logoURI;
  String? balance;
  double? price;
  double? usdBalance;

  Cryptocurrency({
   required this.name,
   required this.symbol,
   required this.address,
   required this.decimals,
   required this.logoURI,
   this.balance,
   this.price,
   this.usdBalance
  });

  factory Cryptocurrency.fromJson(json) {
    return Cryptocurrency(
      name: json['name'],
      symbol: json['symbol'],
      address: json['address'],
      decimals: json['decimals'],
      logoURI: json['logoURI'],
    );
  }
}