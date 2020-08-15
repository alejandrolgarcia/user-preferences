import 'package:flutter/material.dart';
import 'package:userprefapp/src/pages/home_page.dart';
import 'package:userprefapp/src/pages/settings_page.dart';
import 'package:userprefapp/src/share_prefs/preferencias_usuario.dart';

class MenuWidget extends StatelessWidget {
  
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,

        children: <Widget>[

            UserAccountsDrawerHeader(
            // child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              ),
            ),

            accountName: Text( prefs.nombreUsuario ),
              accountEmail: Text( prefs.emailUsuario ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 50
                ),
              ),
          ),

          ListTile(
            leading: Icon( Icons.home, color: Colors.blue ),
            title: Text('Home'),
            onTap: (){
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
          ),

          ListTile(
            leading: Icon( Icons.message, color: Colors.blue ),
            title: Text('Mensajes'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon( Icons.calendar_today, color: Colors.blue ),
            title: Text('Calendario'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon( Icons.people, color: Colors.blue ),
            title: Text('People'),
            onTap: (){},
          ),

          Divider(),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue ),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed( context, SettingsPage.routeName );
            },
          ),

        ],
      ),
    );
  }
}