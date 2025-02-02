import 'package:grpc/grpc.dart';
import 'package:dart_grpc_server/greeter_service.dart';

Future<void> main(List<String> arguments) async {
  final server = Server.create(services: [GreeterService()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
