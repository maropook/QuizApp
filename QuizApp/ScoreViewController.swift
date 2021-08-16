//
//  ScoreViewController.swift
//  QuizApp
//
//  Created by 長谷川樹 on 2021/08/15.
//

import UIKit

class ScoreViewController: UIViewController {
    var correct = 0
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(correct)問正解"

        // Do any additional setup after loading the view.
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
