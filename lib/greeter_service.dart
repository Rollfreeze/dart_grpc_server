import 'package:dart_grpc_server/proto/generated/greeter.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> greetSomeone(ServiceCall call, HelloRequest request) async {
    return HelloReply(message: 'Hello, ${request.name}! My name is Server');
  }
}
