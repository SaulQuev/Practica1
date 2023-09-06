import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🌐 BIENVENIDOS LINCES 🌐')),
      drawer: createDrawer(context),
    );
  }

  Widget createDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.fcyw4-1.fna.fbcdn.net/v/t1.6435-9/118375646_3305647012830310_8731153433170752021_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeF2rX78MU7wY4a-_D4wc6-HlSbIrRb5vN6VJsitFvm83jr9Hv_N7gMjQr1OLTDw7y9GmQLDlhKRC_YsJyJQOtRD&_nc_ohc=JGTs7btpiSIAX-CjxZT&_nc_ht=scontent.fcyw4-1.fna&oh=00_AfCl84a29Wkx7UQeMqjYcwZohkZmDk5Ff9SS4iug6wxg4Q&oe=651F6D90'),
              ),
              accountName: Text('SAUL QUEVEDO HERNANDEZ'),
              accountEmail: Text('19030099@itcelaya.edu.mx')),
          ListTile(
            leading: Image.asset('assets/images/tecno.png'),
            trailing: const Icon(Icons.chevron_right),
            title: const Text('Instituto Tecnologico de Celaya'),
            subtitle: const Text('Acerca de..'),
            onTap: () {
              Navigator.pushNamed(context, '/item');
            },
          ),
        ],
      ),
    );
  }
}
