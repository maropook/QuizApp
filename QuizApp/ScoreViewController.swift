
import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var returnTopButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    var correct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(correct)問正解"

        shareButton.layer.borderWidth = 2
        shareButton.layer.borderColor = UIColor.black.cgColor
        returnTopButton.layer.borderWidth = 2
        returnTopButton.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func shareButtonAction(_ sender: Any) {
        let activityItems = ["\(correct)問正解しました.","#クイズアプリ"]
                let activityVC = UIActivityViewController (activityItems: activityItems, applicationActivities: nil)
                self.present(activityVC, animated: true)
    }
    @IBAction func toTopButtonAction(_ sender: Any) {
        
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
    }
}
