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
        NetworkManager.shared.getFollowers(for: username, page: 1) { followers, errorMessage in
            guard let followers = followers else{
                self.presentGFAlertOnMainThread(title: "Bad Stuff happend", message: errorMessage!, buttonTitle: "Ok")
                return
            }
            print("followers.count = \(followers.count)")
            print(followers)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    

    

}
