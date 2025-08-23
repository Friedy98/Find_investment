import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ConnectivityHandler {
  final Connectivity _connectivity;

  final GlobalKey<NavigatorState> navigatorKey; // Add navigatorKey

  ConnectivityHandler(this._connectivity,
      this.navigatorKey); // Pass navigatorKey in constructor

  Future<bool> checkConnectivity({bool showDialog = true}) async {
    final List<ConnectivityResult> results =
        await _connectivity.checkConnectivity();
    bool isConnected =
        results.any((result) => result != ConnectivityResult.none);

    if (!isConnected && showDialog) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (navigatorKey.currentContext != null) {
          showConnectivityDialog(navigatorKey.currentContext!);
        }
      });
    }

    return isConnected;
  }

  void listenToConnectivityChanges(BuildContext context) {
    _connectivity.onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      bool isConnected =
          results.any((result) => result != ConnectivityResult.none);
      if (!isConnected && context.mounted) {
        showConnectivityDialog(context);
      }
    });
  }
}

void showConnectivityDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 8,
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            Icon(Icons.wifi_off, color: Colors.orangeAccent, size: 28),
            SizedBox(width: 12),
            Text(
              'No Internet Connection',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please check your internet connection and try again.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            SizedBox(height: 12),
            Text(
              '• Ensure Wi-Fi or mobile data is enabled.\n'
              '• Try reconnecting to the network.\n'
              '• Check your router or network settings.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () async {
              final isConnected = await GetIt.I<ConnectivityHandler>()
                  .checkConnectivity(showDialog: false);
              if (isConnected) {
                if (!context.mounted) {
                  return;
                }
                Navigator.of(context).pop();
              }
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
              textStyle: const TextStyle(fontSize: 16),
            ),
            child: const Text('Retry'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey,
              textStyle: const TextStyle(fontSize: 16),
            ),
            child: const Text('Cancel'),
          ),
        ],
      );
    },
  );
}
