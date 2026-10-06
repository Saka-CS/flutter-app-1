import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  static const iconsAndNames = [
    (icon: Icons.file_copy, label: "File Transfer"),
    (icon: Icons.private_connectivity, label: "Private Folder"),
    (icon: Icons.person, label: 'Profile'),
    (icon: Icons.notifications, label: 'Notifications'),
    (icon: Icons.lock, label: 'Privacy'),
    (icon: Icons.help, label: 'Help'),
    (icon: Icons.logout, label: 'Logout'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).colorScheme.primaryFixedDim,
                Theme.of(context).colorScheme.surface,
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 12,
          children: [
            Card(
              elevation: 1,
              clipBehavior: Clip.antiAlias,
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                spacing: 4,
                children: [
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    childAspectRatio: 1.5,
                    children: iconsAndNames.map((item) {
                      return InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              item.icon,
                              size: 25,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            Text(item.label),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 1,
              clipBehavior: Clip.antiAlias,
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: Color(0xFF25D366),
                ),
                title: Text("WhatsApp Status Server"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
            ),
            Card(
              elevation: 1,
              clipBehavior: Clip.hardEdge,
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.shirt,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: Text("App Theme"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: Text("Settings"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Card(
              elevation: 1,
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.balance,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: Text("Legal"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.help,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: Text("Help"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
