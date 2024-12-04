//
//  ExploreController.swift
//  TwitterClone
//
//  Created by 차유민 on 7/16/24.
//

import UIKit

class ExploreController: UIViewController {
    
    // MARK: - Properties
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
        
    }
}
