// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RewardedAd? rewardedAd;
  int rewardscore = 0;

  @override
  void initState() {
    super.initState();
    loadrewardads();
  }

  loadrewardads() {
    RewardedAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/5224354917',
        request: AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) {
            setState(() {
              rewardedAd = ad;
            });
          },
          onAdFailedToLoad: (errer) {
            setState(() {
              rewardedAd = null;
            });
          },
        ));
  }

  void showads() {
    if (rewardedAd != null) {
      rewardedAd!.fullScreenContentCallback =
          FullScreenContentCallback(onAdDismissedFullScreenContent: (ad) {
        setState(() {
          rewardedAd!.dispose();
          loadrewardads();
        });
      }, onAdFailedToShowFullScreenContent: (ad, error) {
        setState(() {
          rewardedAd!.dispose();
          loadrewardads();
        });
      });
      rewardedAd!.show(
        onUserEarnedReward: (ad, reward) {
          setState(() {
            rewardscore ++;
          });
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Demo',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Reward score: $rewardscore'),
            ElevatedButton(onPressed: showads, child: Text('Press'))
          ],
        ),
      ),
    );
  }
}
