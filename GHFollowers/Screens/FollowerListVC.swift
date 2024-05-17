//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Fahar Imran on 11/05/24.
//

import UIKit

class FollowerListVC: UIViewController {

    var username : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
       
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    

    

}