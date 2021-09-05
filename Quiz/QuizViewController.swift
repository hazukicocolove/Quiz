//
//  QuizViewController.swift
//  Quiz
//
//  Created by Hazuki Tamura on 2021/09/06.
//

import UIKit

class QuizViewController: UIViewController {
    
    var quizArray = [Any]()

    var correctAnswer: Int = 0
    
    @IBOutlet var quizTextView:UITextView!
    @IBOutlet var choice1: UIButton!
    @IBOutlet var choice2: UIButton!
    @IBOutlet var choice3: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quizArray.append(["問題文1","選択1","選択2","選択3",2])
        quizArray.append(["問題文2","選択1","選択2","選択3",4])
        quizArray.append(["問題文3","選択1","選択2","選択3",2])
        quizArray.append(["問題文4","選択1","選択2","選択3",1])
        quizArray.append(["問題文5","選択1","選択2","選択3",1])
        quizArray.append(["問題文6","選択1","選択2","選択3",4])
        quizArray.shuffle()
        choice()
        // Do any additional setup after loading the view.
    }
    
    func choice(){
        //一時的
        let tmpArray = quizArray[0] as! [Any]
        quizTextView.text = tmpArray[0] as? String
        choice1.setTitle(tmpArray[1] as? String, for: .normal)
        choice2.setTitle(tmpArray[2] as? String, for: .normal)
        choice3.setTitle(tmpArray[3] as? String, for: .normal)
    }
 
    func performeSegueToResult(){
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultView"{
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.correctAnswer = self.correctAnswer
        }
    }
    @IBAction func answer(sender:UIButton){
        let tmpArray = quizArray[0] as! [Any]
        if tmpArray[4] as! Int == sender.tag{
            correctAnswer = correctAnswer + 1
        }
        quizArray.remove(at: 0)
        
        if quizArray.count == 0{
            performeSegueToResult()
        }else{
            choice()
        }
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
