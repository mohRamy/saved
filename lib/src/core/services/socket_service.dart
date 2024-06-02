// import 'package:socket_io_client/socket_io_client.dart';

// import '../../../config/application.dart';
// import '../components/components.dart';
// import '../di/dependency_injection.dart';
// import '../errors/exception.dart';
// import '../helpers/api_helper/network_info.dart';

// class SocketService {
//   final NetworkInfo networkInfo;
//   SocketService(this.networkInfo);

//   static Socket? socket;

//   static void socketConnect() {
//     disconnectBeforeConnect();
//     String socketUrl = Application.socketUrl;
//     socket = io(
//       socketUrl,
//       OptionBuilder()
//           .enableForceNew()
//           .setTransports(['websocket']).setExtraHeaders({
//         'authorization': AppGet.authGet.userData!.token,
//       }).build(),
//     );

//     socket!.connect();
//   }

//   Future<void> socketApi(
//     List<String> socketGateway,
//     Map<String, dynamic> body,
//   ) async {
//     try {
//       if (!(await networkInfo.isConnected)) {
//         throw OfflineException();
//       }

//       socket!.onConnect((_) {
//         socket!.emit(
//           socketGateway[0],
//           body,
//         );
//         socket!.on(socketGateway[1], (data) {
//           AppGet.viewStoryGet.likedStory(data);
//         });
//         socket!.on(socketGateway[2], (data) {
//           Components.showSnackBar(data['error'], title: socketGateway[3]);
//         });
//       });
//     } catch (e) {
//       rethrow;
//     }
//   }

//   static void disconnectBeforeConnect() {
//     if (socket != null && socket!.connected) {
//       socket!.disconnect();
//     }
//   }
// }
