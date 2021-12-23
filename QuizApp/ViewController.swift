import GoogleMobileAds
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
  var bannerView: GADBannerView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    startButton.layer.borderWidth = 2
    startButton.layer.borderColor = UIColor.black.cgColor
    bannerView = GADBannerView(adSize: kGADAdSizeBanner)
    addBannerViewToView(bannerView)
    bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
    bannerView.rootViewController = self
    bannerView.load(GADRequest())
  }

  func addBannerViewToView(_ bannerView: GADBannerView) {
    bannerView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(bannerView)
    view.addConstraints(
      [NSLayoutConstraint(item: bannerView,
                          attribute: .bottom,
                          relatedBy: .equal,
                          toItem: view.safeAreaLayoutGuide,
                          attribute: .bottom,
                          multiplier: 1,
                          constant: 0),
       NSLayoutConstraint(item: bannerView,
                          attribute: .centerX,
                          relatedBy: .equal,
                          toItem: view,
                          attribute: .centerX,
                          multiplier: 1,
                          constant: 0)
      ])
   }
   
}
