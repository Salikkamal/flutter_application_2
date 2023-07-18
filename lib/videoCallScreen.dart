import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideocalScreen extends StatefulWidget {
  const VideocalScreen({super.key});

  @override
  State<VideocalScreen> createState() => _VideocalScreenState();
}

class _VideocalScreenState extends State<VideocalScreen> {
  final AgoraClient _client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
    appId: '96f7e220253b41b58aae80fa5e706866',
    channelName: 'educationaf',
    tempToken:
        '007eJxTYCiTnhskeX39neO5nzc5GbDUHOtIu9obENy+k5shoSg4Yb4Cg6VZmnmqkZGBkalxkolhkqlFYmKqhUFaommquYGZhZmZ/pdtKQ2BjAzb7VwZGKEQxOdmSE0pTU4syczPS0xjYAAA90IhQg==',
  ));
  @override
  void initstate() {
    super.initState();
    _initAgora();
  }

  Future<void> _initAgora() async {
    await _client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Video Call'),
          ),
          body: SafeArea(
              child: Stack(
            children: [
              AgoraVideoViewer(
                client: _client,
                layoutType: Layout.floating,
                showNumberOfUsers: true,
              ),
              AgoraVideoButtons(
                client: _client,
                enabledButtons: [
                  BuiltInButtons.toggleCamera,
                  BuiltInButtons.callEnd,
                  BuiltInButtons.toggleMic,
                  BuiltInButtons.switchCamera
                ],
              ),
            ],
          )),
        ));
  }
}
