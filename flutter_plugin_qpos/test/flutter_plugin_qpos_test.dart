import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_plugin_qpos/flutter_plugin_qpos.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_plugin_qpos');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('', () {

     methodHanshu1();
     print("luguo");

     methodHanshu();

  });
}

methodHanshu1() async{
  await xunhuandaying("测试异步哈桑农户1111111");
}

xunhuandaying(String value) {
  var i =100;
  while(i>0){
    print(value);

    i--;
  }
}

 methodHanshu() async{
   await xunhuandaying("测试异步哈桑农户");
}
