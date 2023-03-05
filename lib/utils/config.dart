import 'package:solana/solana.dart';

var mainnetRpcUrl = 'https://rpc.ankr.com/solana/e00d11a08c7f429113d4db774e14235d10fc7c2961a8b72e1e7d24ca29c29adb';
var mainnetWebsocketUrl = 'wss://rpc.ankr.com/solana/ws/e00d11a08c7f429113d4db774e14235d10fc7c2961a8b72e1e7d24ca29c29adb';

SolanaClient get mainnetSolanaClient => SolanaClient(rpcUrl: Uri.parse(mainnetRpcUrl), websocketUrl: Uri.parse(mainnetWebsocketUrl));