//
//  MainTabBarController.swift
//  Homeworks
//
//  Created by Alexander Kovzhut on 05.10.2021.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    
    // MARK: - Вызываем все VC
    func setupTabBar() {
        let developmentQuestionVC = createNavigationController(
            viewController: DevelopmentQuestionVC(),
            itemName: "Development",
            itemImage: "calendar.badge.clock"
        )
        let operationsQuestionVC = createNavigationController(
            viewController: OperationsQuestionVC(),
            itemName: "Operations",
            itemImage: "calendar.badge.clock"
        )
        let newsCollectionVC = createNavigationController(
            viewController: NewsCollectionVC(),
            itemName: "What's new",
            itemImage: "calendar.badge.clock"
        )
        
        viewControllers = [developmentQuestionVC, operationsQuestionVC, newsCollectionVC]
    }

    // MARK: - Шаблон для создания VC
    fileprivate func createNavigationController(viewController: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        let item = UITabBarItem(
            title: itemName,
            image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(
                .init(
                    top: 10,          // - Выравнивание items на TabBar
                    left: 0,
                    bottom: 0,
                    right: 0
                )
            ),
            tag: 0
        )
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = item
        
        return navigationController
    }

}
