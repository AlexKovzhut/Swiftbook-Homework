//
//  TableViewController.swift
//  Homeworks
//
//  Created by Alexander Kovzhut on 04.10.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    var menuViewController: UIViewController!
    
    private var questionList = Question.getQuestion()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigationBar()
        getTableStyle()
    }
}

// MARK: - Table view data source

extension TableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as! TableViewCell

        let question = questionList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = question.title
        cell.contentConfiguration = content

        return cell
    }
}

// MARK: - Action

extension TableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? ViewController, let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let question = questionList[indexPath.row]
        viewController.question = question
    }
}

// MARK: - Table Style

extension TableViewController {
    func getTableStyle() {
        tableView.rowHeight = 70
        tableView.backgroundColor = UIColor.white
    }
}

// MARK: - Handlers, NavigationController Style

extension TableViewController {
    @objc func handleMenuToggle() {
        
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.barTintColor = .white
        
        navigationItem.title = "Swift Compendium"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "text.chevron.left")?.withRenderingMode(.alwaysOriginal),
            style: .plain,
            target: self,
            action: #selector(handleMenuToggle)
        )
    }
    
    func configureMenuViewController() {
        if menuViewController == nil {
            // add menu controller
            menuViewController = MenuViewController()
            view.insertSubview(menuViewController.view, at: 0)
            addChild(menuViewController)
            menuViewController.didMove(toParent: self)
        }
    }
    
}
