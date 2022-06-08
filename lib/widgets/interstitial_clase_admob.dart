import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'admon_ads.dart';

class AnunciosInterstitial {
  InterstitialAd? _interstitialAd;
  int _numInterstitialLoadAttempts = 0;

  void createInter() {
    InterstitialAd.load(
        adUnitId: Anuncios.inter,
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: ((ad) {
          _interstitialAd = ad;
          _numInterstitialLoadAttempts = 0;
        }), onAdFailedToLoad: (LoadAdError error) {
          _numInterstitialLoadAttempts + 1;
          _interstitialAd = null;
          if (_numInterstitialLoadAttempts <= 2) {
            createInter();
          }
        }));
  }

  //mostrar aunucios intersiciales al usuario
  void showInter() {
    if (_interstitialAd == null) {
      return;
    }
    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: ((InterstitialAd ad) {
        print("ad onAdshowedFullscreen");
      }),
      onAdDismissedFullScreenContent: ((InterstitialAd ad) {
        print("ad Disposed");
        ad.dispose();
      }),
      onAdFailedToShowFullScreenContent: ((InterstitialAd ad, AdError aderror) {
        print('$ad OnAdFailed $aderror');
        ad.dispose();
        createInter();
      }),
    );
    _interstitialAd!.show();
    _interstitialAd = null;
  }
}
