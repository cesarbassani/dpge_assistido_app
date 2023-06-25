import 'package:dpge_assistido_app/domain/usuario.dart';
import 'package:dpge_assistido_app/modules/api_response.dart';
import 'package:dpge_assistido_app/modules/login/login_api.dart';
import 'package:dpge_assistido_app/modules/solicitacoes/home_page.dart';
import 'package:dpge_assistido_app/utils/alert.dart';
import 'package:dpge_assistido_app/utils/nav.dart';
import 'package:dpge_assistido_app/widgets/app_button.dart';
import 'package:dpge_assistido_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _tLogin = TextEditingController(text: 'fernandoo.rodrigues9@gmail.com');
  final _tSenha = TextEditingController(text: '123456');

  final _focusSenha = FocusNode();

  bool _showProgress = false;

  @override
  void initState() {
    super.initState();
    Future<Usuario?> future = Usuario.get();
    future.then((usuario) {
      if (usuario != null) {
        push(context, const HomePage(), replace: true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DPGEMS'),
      ),
      body: _body(),
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            AppText(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              label: 'Login',
              hint: 'Digite o login',
              controller: _tLogin,
              validator: _validateLogin,
              nextFocus: _focusSenha,
            ),
            const SizedBox(height: 20),
            AppText(
              keyboardType: TextInputType.number,
              focusNode: _focusSenha,
              label: 'Senha',
              hint: 'Digite a senha',
              password: true,
              controller: _tSenha,
              validator: _validateSenha,
            ),
            const SizedBox(height: 20),
            AppButton(
              text: 'ENTRAR',
              onPressed: _onClickLogin,
              showProgress: _showProgress,
            ),
          ],
        ),
      ),
    );
  }

  _onClickLogin() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    String login = _tLogin.text;
    String senha = _tSenha.text;

    print('Login: ${_tLogin.text}');
    print('Senha: ${_tSenha.text}');

    setState(() {
      _showProgress = true;
    });

    ApiResponse? response = await LoginApi.login(login, senha);

    if (response.ok!) {
      Usuario? usuario = response.result;
      if (!mounted) {
        return;
      }
      print('>>> $usuario');
      push(context, const HomePage(), replace: true);
    } else {
      print(response.msg);
      if (!mounted) {
        return;
      }
      alert(context, response.msg!);
    }
    setState(() {
      _showProgress = false;
    });
  }

  String? _validateLogin(String? value) {
    if (value!.isEmpty) {
      return 'Digite o login';
    }
    return null;
  }

  String? _validateSenha(String? value) {
    if (value!.isEmpty) {
      return 'Digite a senha';
    }
    if (value.length < 6) {
      return 'A senha precisa ter pelo menos 6 caracteres';
    }
    return null;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
