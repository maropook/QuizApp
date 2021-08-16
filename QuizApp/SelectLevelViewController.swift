import UIKit

class SelectLevelViewController: UIViewController {

    @IBOutlet weak var levelButton1: UIButton!
    @IBOutlet weak var levelButton2: UIButton!
    @IBOutlet weak var levelButton3: UIButton!
    var selectTag = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        levelButton1.layer.borderWidth = 2
        levelButton1.layer.borderColor = UIColor.black.cgColor
        levelButton2.layer.borderWidth = 2
        levelButton2.layer.borderColor = UIColor.black.cgColor
        levelButton3.layer.borderWidth = 2
        levelButton3.layer.borderColor = UIColor.black.cgColor
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let quizVC = segue.destination as! QuizViewController
        quizVC.selectLevel = selectTag
    }
    
    @IBAction func levelButtonAction(sender: UIButton) {
        print(sender.tag)
        selectTag = (sender.tag)
        performSegue(withIdentifier: "toQuizVC", sender: nil)
    }
}

