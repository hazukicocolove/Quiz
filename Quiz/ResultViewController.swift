//
//  ResultViewController.swift
//  Quiz
//
//  Created by Hazuki Tamura on 2021/09/06.
//

import UIKit

class ResultViewController: UIViewController {
    
    var correctAnswer: Int = 0
    
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(correctAnswer)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
        self.presentationController?.presentedViewController.dismiss(animated: true, completion: nil)
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
