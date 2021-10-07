//
//  DevelopmentQuestionVC.swift
//  Homeworks
//
//  Created by Alexander Kovzhut on 05.10.2021.
//

import UIKit

class DevelopmentQuestionVC: UIViewController {
    
    private let tableView: UITableView = {
        let table = UITableView()
        
        table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        table.bounces = false
        
        return table
    }()
    
    private var questionList = DevelopmentQuestion.getQuestion()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        
        title = "Development"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableView.frame = view.bounds
    }
}

//MARK: - Navigation

extension DevelopmentQuestionVC {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      let destination = DevelopmentAnswerVC()
      navigationController?.pushViewController(destination, animated: true)
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource

extension DevelopmentQuestionVC: UITableViewDataSource, UITableViewDelegate {
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Section 1"
//    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        return print("\(indexPath.row)")
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        let question = questionList[indexPath.row]
                
        var content = cell.defaultContentConfiguration()
        content.text = question.title
        
        cell.contentConfiguration = content
        cell.selectionStyle = .none
        
        return cell
    }
}
