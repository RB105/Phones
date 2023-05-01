import 'package:flutter_dotenv/flutter_dotenv.dart';

class PhoneUrls {
  static String apiKey = dotenv.get("API_KEY");
  static String appleUrl = "$apiKey/apple";
  static String xiaomiUrl = "$apiKey/xiaomi";
  static String huaweiUrl = "$apiKey/huawei";
  static String oppoUrl = "$apiKey/oppo";
  static String samsungUrl = "$apiKey/samsung";
}