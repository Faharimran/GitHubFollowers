//
//  SearchVC.swift
//  GHFollowers
//
//  Created by Fahar Imran on 09/05/24.
//

import UIKit

class SearchVC: UIViewController {
    
    let logoImageView = UIImageView()
    let userTextField = GFTextfield()
    let actionButton  = GFButton(backgroundColor: .systemGreen, title: "Get Followers")
    
    var isUserNameEntered : Bool{
        return !userTextField.text!.isEmpty
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoImageView()
        configureTextField()
        configureCallToActionButton()
        createDismissKeyboardTapGesture()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func createDismissKeyboardTapGesture () {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    @objc func pushFollowerList() {
        
        guard isUserNameEntered
        else {
            presentGFAlertOnMainThread(title: "Empty Username", message: "Please Enter Username we need to know who to 👀", buttonTitle: "Ok")
            return }
        let followerListtVC      = FollowerListVC()
        followerListtVC.username = userTextField.text
        followerListtVC.title    = userTextField.text
        navigationController?.pushViewController(followerListtVC, animated: true)
    }
    
    
    func configureLogoImageView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")!
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)])
    }
    
    func configureTextField() {
        
        
        view.addSubview(userTextField)
        NSLayoutConstraint.activate([
            userTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            userTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  50),
            userTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            userTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configureCallToActionButton() {
        view.addSubview(actionButton)
        actionButton.addTarget(self, action: #selector(pushFollowerList), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            actionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
    
    extension SearchVC:UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField)->Bool{
            pushFollowerList()
            return true
        }
    }



