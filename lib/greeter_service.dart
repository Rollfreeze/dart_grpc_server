import 'package:grpc/grpc.dart';
import 'package:dart_grpc_server/proto/generated/service.pbgrpc.dart';

class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
    return HelloReply(message: 'Hello, ${request.name}!');
  }
}
