import 'package:flutter/material.dart';

alert(BuildContext context, String msg, {Function? callback}) {
  showDialog(
    context: context,
    builder: (context) {
      return WillPopScope(
          child: AlertDialog(
            title: const Text('Defensoria Pública MS'),
            content: Text(msg),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  if (callback != null) {
                    callback();
                  }
                },
                child: const Text('Ok'),
              ),
            ],
          ),
          onWillPop: () async => false);
    },
  );
}
