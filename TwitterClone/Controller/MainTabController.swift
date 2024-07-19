//
//  MainTabController.swift
//  TwitterClone
//
//  Created by 차유민 on 7/16/24.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Properties
    
    // 모든 창에 버튼을 띄울 것이기 때문에 maintabController에 만드는 것이 효율적임
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
        configureUI()
    }
    
    // MARK: - Actions
    
    @objc func actionButtonTapped() {
        print("DEBUG: Action button Tapped...")
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.addSubview(actionButton)
        
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor,
                            paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56 / 2
    }
    
    func configureViewControllers() {
        
        let feed = FeedController()
        let nav1 = templateNavigationController(image: #imageLiteral(resourceName: "home_unselected"), rootViewController: feed)
        
        let explore = ExploreController()
        let nav2 = templateNavigationController(image: #imageLiteral(resourceName: "search_unselected"), rootViewController: explore)
        
        let notifications = NotificationController()
        let nav3 = templateNavigationController(image: #imageLiteral(resourceName: "like_unselected"), rootViewController: notifications)
        
        let conversations = ConversationsController()
        let nav4 = templateNavigationController(image: #imageLiteral(resourceName: "ic_mail_outline_white_2x-1"), rootViewController: conversations)
        
        viewControllers = [nav1, nav2, nav3, nav4]
    }

    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
       
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
    

}
