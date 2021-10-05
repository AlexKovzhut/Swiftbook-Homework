//
//  ViewController.swift
//  Homeworks
//
//  Created by Alexander Kovzhut on 04.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleQuestionlabel: UILabel!
    
    var question: Question?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        titleQuestionlabel.text = question?.title
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
