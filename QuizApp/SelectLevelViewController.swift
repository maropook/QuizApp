import UIKit

class SelectLevelViewController: UIViewController {

    var selectTag = 0
//    @IBOutlet weak var level1Button: UIButton!
//    @IBOutlet weak var level2Button: UIButton!
//    @IBOutlet weak var level3Button: UIButton!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        level1Button.layer.borderWidth = 2
//        level1Button.layer.borderColor = UIColor.black.cgColor
//        level2Button.layer.borderWidth = 2
//        level2Button.layer.borderColor = UIColor.black.cgColor
//        level3Button.layer.borderWidth = 2
//        level3Button.layer.borderColor = UIColor.black.cgColor
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let quizVC = segue.destination as! QuizViewController
//        quizVC.selectLevel = selectTag
//    }
    
    @IBAction func levelButtonAction(sender: UIButton) {
        print(sender.tag)
        selectTag = (sender.tag)
//        performSegue(withIdentifier: "toQuizVC", sender: nil)
    }
}

