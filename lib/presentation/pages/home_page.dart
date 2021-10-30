import 'package:flutter/material.dart';

import 'package:flutter_code_base/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(TitlesConstants.homeTitle),
        ),
        body: const HomeWidget());
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteConstants.api);
              },
              child: const Text(ButtonConstatns.api)),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteConstants.cached);
              },
              child: const Text(ButtonConstatns.cached))
        ],
      ),
    );
  }
}
