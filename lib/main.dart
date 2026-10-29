import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/config.dart';
import 'package:flutter_application_2/01_local/local_homepage.dart';
import 'package:flutter_application_2/02_distributed/distributed_homepage.dart';
import 'package:flutter_application_2/03_distributed_with_passive_widgets/distributed_passive_homepage.dart';
import 'package:flutter_application_2/04_global/global_homepage.dart';

const config = Config.distributed;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: switch (config) {
      Config.local => LocalHomepage(),
      Config.distributed => DistributedHomepage(),
      Config.distributedWithPassiveWidgets => DistributedPassiveHomepage(),
      Config.global => GlobalHomepage(),
    },
  );
}
