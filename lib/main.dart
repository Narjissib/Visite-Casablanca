import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vs/providers/sign_in_provider.dart';
import 'package:vs/routes.dart';
import 'package:vs/screens/Welcomepage.dart';
import 'package:vs/size_config.dart';
import 'package:vs/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => SigninProvider()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        initialRoute: Welcomepage.routeName,
        routes: routes,
        home: Welcomepage(),
      ),
    );
  }
}
