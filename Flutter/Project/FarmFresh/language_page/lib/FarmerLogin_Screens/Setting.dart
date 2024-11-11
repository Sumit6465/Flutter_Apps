import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationsEnabled = true;
  bool darkMode = false;
  String selectedLanguage = 'English';

  void _onNotificationsToggle(bool value) {
    setState(() {
      notificationsEnabled = value;
    });
  }

  void _onDarkModeToggle(bool value) {
    setState(() {
      darkMode = value;
    });
  }

  void _onLanguageChange(String? newValue) {
    setState(() {
      selectedLanguage = newValue!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: GoogleFonts.quicksand(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Language selection
            ListTile(
              title: Text(
                "Language",
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                selectedLanguage,
                style: GoogleFonts.inter(fontSize: 16),
              ),
              trailing: DropdownButton<String>(
                value: selectedLanguage,
                onChanged: _onLanguageChange,
                items: ['English', 'Hindi', 'Marathi', 'Spanish']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            const Divider(),

            // Notifications setting
            SwitchListTile(
              title: Text(
                "Enable Notifications",
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              value: notificationsEnabled,
              onChanged: _onNotificationsToggle,
            ),
            const Divider(),

            // Dark mode toggle
            SwitchListTile(
              title: Text(
                "Enable Dark Mode",
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              value: darkMode,
              onChanged: _onDarkModeToggle,
            ),
            const Divider(),

            // Logout button
            ListTile(
              title: Text(
                "Log Out",
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              onTap: () {
                // Add your logout functionality here
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Log Out"),
                    content: Text("Are you sure you want to log out?"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          // Perform logout action
                          Navigator.of(context).pop();
                        },
                        child: Text("Log Out"),
                      ),
                    ],
                  ),
                );
              },
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
