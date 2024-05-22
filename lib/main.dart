import 'package:clean_architecture_flutter/configs/injector/di.dart';
import 'package:clean_architecture_flutter/presentation/bloc/auth_bloc.dart';
import 'package:clean_architecture_flutter/presentation/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DI.configDependencies();
  runApp(BlocProvider(
      create: (_) => AuthBloc(DI.resolve()),child: const MyApp(),),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}





