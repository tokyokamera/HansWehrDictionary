import 'package:flutter/material.dart';
import 'package:search/constants/appConstants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class CommonDrawer extends StatelessWidget {
  final String currentScreen;

  const CommonDrawer({this.currentScreen});

  @override
  Drawer build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 65),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerItem(
                    currentScreen: currentScreen,
                    title: SEARCH_SCREEN_TITLE,
                    route: '/search',
                    icon: Icons.search,
                  ),
                  DrawerItem(
                    currentScreen: currentScreen,
                    title: BROWSE_SCREEN_TITLE,
                    route: '/browse',
                    icon: Icons.list,
                  ),
                  DrawerItem(
                    currentScreen: currentScreen,
                    title: ABBREVIATIONS_SCREEN_TITLE,
                    route: '/abbreviations',
                    icon: Icons.info,
                  ),
                  VerbForms(),
                ],
              ),
              Column(
                children: [
                  Divider(),
                  DrawerItem(
                      currentScreen: currentScreen,
                      title: SETTINGS_SCREEN_TITLE,
                      route: '/settings',
                      icon: Icons.settings),
                  DrawerItem(
                      currentScreen: currentScreen,
                      title: ABOUT_APP_SCREEN_TITLE,
                      route: '/aboutus',
                      icon: Icons.people),
                  DrawerItem(
                    currentScreen: currentScreen,
                    title: NOTIFICATION_SCREEN_TITLE,
                    route: '/notifications',
                    icon: Icons.notifications,
                  ),
                  RateUs(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RateUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: FlatButton(
            child: Row(
              children: [
                Icon(
                  Icons.star,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Rate Us"),
              ],
            ),
            onPressed: () {
              launch(PLAY_STORE_LINK);
            },
          ),
        ),
        FlatButton(
          child: Icon(Icons.share),
          onPressed: () {
            Share.share(
                'Check out this Hans Wehr Dictionary App : ' + PLAY_STORE_LINK);
          },
        ),
      ],
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String currentScreen;
  final String title;
  final String route;
  final IconData icon;
  DrawerItem({this.currentScreen, this.title, this.route, this.icon});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        if (currentScreen != title) {
          if (currentScreen == SEARCH_SCREEN_TITLE) {
            Navigator.pop(context);
            Navigator.pushNamed(context, route);
          } else {
            Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
          }
        } else
          Navigator.pop(context);
      },
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 10,
          ),
          Text(title)
        ],
      ),
    );
  }
}

class VerbForms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Center(child: Text('VERB FORMS')),
              titlePadding: const EdgeInsets.all(8.0),
              contentPadding: const EdgeInsets.all(0.0),
              content: Container(
                height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width * .9,
                child: ListView.builder(
                  itemCount: VERB_FORMS.length,
                  itemBuilder: (_, i) {
                    return ExpansionTile(
                      childrenPadding: EdgeInsets.fromLTRB(30, 0, 16, 0),
                      title: Text(VERB_FORMS[i]),
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      expandedAlignment: Alignment.topLeft,
                      children: [
                        Container(
                          child: Text(
                            'Pattern Meaning : ' + VERB_FORM_DESCRIPTIONS[i],
                          ),
                        ),
                        Container(
                          child: Text(
                            'Eg. : ' + VERB_FORM_EXAMPLES[i],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              actions: [
                FlatButton(
                  child: Text('DISMISS'),
                  onPressed: Navigator.of(context).pop,
                ),
              ],
            );
          },
        );
      },
      child: Row(
        children: [
          Icon(Icons.info),
          SizedBox(
            width: 10,
          ),
          Text('Verb Forms')
        ],
      ),
    );
  }
}
