import 'package:dpge_assistido_app/domain/usuario.dart';
import 'package:dpge_assistido_app/modules/login/login_page.dart';
import 'package:dpge_assistido_app/utils/nav.dart';
import 'package:dpge_assistido_app/utils/ui/colors_app.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final _urlFoto =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqP85ZnOcRSCX3nlYdkCvSxhSuZs0bLt1He8EvGr5ne8c7mTqW";

  @override
  Widget build(BuildContext context) {
    Future<Usuario?> future = Usuario.get();
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            FutureBuilder<Usuario?>(
              future: future,
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  Usuario? user = snapshot.data!;
                  return _header(user);
                }
                return Container();
              }),
            ),
            // ListTile(
            //   leading: const Icon(Icons.star),
            //   title: const Text("Favoritos"),
            //   subtitle: const Text("mais informações..."),
            //   trailing: const Icon(Icons.arrow_forward),
            //   onTap: () {
            //     print("Item 1");
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text("Ajuda"),
              subtitle: const Text("mais informações..."),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Sair"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => _onClickLogout(context),
            )
          ],
        ),
      ),
    );
  }

  UserAccountsDrawerHeader _header(Usuario usuario) {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: ColorsApp.i.primary,
      ),
      accountName: Text(usuario.name!),
      accountEmail: const Text(''),
      currentAccountPicture: const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqP85ZnOcRSCX3nlYdkCvSxhSuZs0bLt1He8EvGr5ne8c7mTqW"),
      ),
    );
  }

  _onClickLogout(BuildContext context) {
    Usuario.clear();
    Navigator.pop(context);
    push(context, const LoginPage(), replace: true);
  }
}
