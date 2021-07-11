import 'package:coinzie/Global/global.dart' as global;
import 'package:coinzie/iconWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

//   @override
//   _AccountState createState() => _AccountState();
// }

// class _AccountState extends State<Account> {
  static const keyDarkMode = 'key-dark-mode';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      padding: EdgeInsets.all(24),
      children: [
        Card(
          elevation: 0.0,
          color: Colors.white70,
          child: Container(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Container(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(200.0),
                  child: Image.asset('assets/images/avatar.png',
                      width: MediaQuery.of(context).size.width * 0.2,
                      color: Colors.blueGrey[600]),
                )),
                SizedBox(
                  width: 13.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      global.fullName,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(global.finalEmail,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                        )),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.edit_outlined),
                        label: Text('Edit'))
                  ],
                )
              ],
            ),
          ),
        ),
        SettingsGroup(title: '', children: [
          buildDarkMode(),
        ]),
        SettingsGroup(title: 'GENERAL', children: [
          const SizedBox(
            height: 8.0,
          ),
          buildAcountSetting(),
          buildPayment(),
          buildNotifications(),
          buildDevices(),
        ]),
        const SizedBox(
          height: 32,
        ),
        SettingsGroup(title: 'FEEDBACK', children: [
          const SizedBox(
            height: 8.0,
          ),
          buildReportBug(context),
          buildSendFeedback(context),
        ])
      ],
    ));
  }

  Widget buildDarkMode() => SwitchSettingsTile(
        title: 'Dark Mode',
        settingKey: keyDarkMode,
        leading: IconWidget(
            color: Color(0xFF642ef3), icon: Icons.dark_mode_outlined),
        onChange: (_) {},
      );

  Widget buildAcountSetting() => SimpleSettingsTile(
        title: 'Account Settings',
        subtitle: 'Privacy, Security, Language',
        leading: IconWidget(color: Colors.green, icon: Icons.settings),
        onTap: () {},
      );

  Widget buildNotifications() => SimpleSettingsTile(
        title: 'Notifications',
        subtitle: '',
        leading: IconWidget(
          color: Colors.orange,
          icon: Icons.notifications_outlined,
        ),
        onTap: () {},
      );

  Widget buildPayment() => SimpleSettingsTile(
        title: 'Payment Methods',
        subtitle: 'Cash, Cards, Bank',
        leading: IconWidget(
          icon: Icons.money_outlined,
          color: Colors.blue,
        ),
        onTap: () {},
      );

  Widget buildDevices() => SimpleSettingsTile(
        title: 'Devices',
        subtitle: '',
        leading: IconWidget(
          icon: Icons.devices_outlined,
          color: Colors.pink,
        ),
        onTap: () {},
      );
  Widget buildReportBug(BuildContext context) => SimpleSettingsTile(
        title: 'Report a Bug',
        subtitle: '',
        leading: IconWidget(
          icon: Icons.bug_report_outlined,
          color: Colors.teal,
        ),
        onTap: () {},
      );

  Widget buildSendFeedback(BuildContext context) => SimpleSettingsTile(
        title: 'Send Feedback',
        subtitle: '',
        leading: IconWidget(
          icon: Icons.thumbs_up_down_outlined,
          color: Colors.purple,
        ),
        onTap: () {},
      );
}
