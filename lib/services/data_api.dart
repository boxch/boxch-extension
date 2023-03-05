import 'dart:convert';
import 'package:boxch_extension/models/cryptocurrency.dart';
import 'package:http/http.dart' as http;

class DataApi {

  Future<List<Cryptocurrency>> getTokensInfo() async {
    var url = Uri.parse("https://github.com/boxch/boxch-tokens/blob/main/bin/tokens.json");
    var response = await http.get(url);
    List jsonDecode = json.decode(response.body)['tokens'];
    return jsonDecode.map((json) => Cryptocurrency.fromJson(json)).toList();
  }

}
