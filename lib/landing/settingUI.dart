// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:settings_ui/settings_ui.dart';

class MyPlugin extends StatefulWidget {
  @override
  _MyPluginState createState() => _MyPluginState();
}

class _MyPluginState extends State<MyPlugin> {
  bool lockInBackground = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.black,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text("Common"),
            tiles: [
              SettingsTile(
                title: Text("Language"),
                value: Text("English"),
                leading: Icon(Icons.language),
                
              ),
              SettingsTile(
                  title: Text("Environment"),
                  value: Text("Production"),
                  leading: Icon(Icons.cloud_queue)),
            ],
          ),
          SettingsSection(
            title: Text('Account'),
            tiles: [
              SettingsTile(title: Text('Phone number'), leading: Icon(Icons.phone)),
              SettingsTile(title: Text('Email'), leading: Icon(Icons.email)),
              SettingsTile(title: Text('Sign out'), leading: Icon(Icons.exit_to_app)),
            ],
          ),
          SettingsSection(
            title: Text('Secutiry'),
            tiles: [
              SettingsTile.switchTile(
                initialValue: lockInBackground,
                title: Text('Lock app in background'),
                leading: Icon(Icons.phonelink_lock),
                
                onToggle: (bool value) {
                  setState(() {
                    lockInBackground = value;
                  });
                },
              ),
              SettingsTile.switchTile(
                  title: Text('Use fingerprint'),
                  leading: Icon(Icons.fingerprint),
                  onToggle: (bool value) {},
                  initialValue: false),
              SettingsTile.switchTile(
                title: Text('Change password'),
                leading: Icon(Icons.lock),
                initialValue: true,
                onToggle: (bool value) {},
              ),
            ],
          ),
          SettingsSection(
            title: Text('Misc'),
            tiles: [
              SettingsTile(
                  title: Text('Terms of Service'), leading: Icon(Icons.description)),
              SettingsTile(
                  title: Text('Open source licenses'),
                  leading: Icon(Icons.collections_bookmark)),
            ],
          )
        ],
      ),
    );
  }
}