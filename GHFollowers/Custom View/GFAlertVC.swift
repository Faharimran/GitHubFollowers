//
//  GFAlertVC.swift
//  GHFollowers
//
//  Created by Fahar Imran on 12/05/24.
//

import UIKit

class GFAlertVC: UIViewController {

    
    let containerView   = UIView()
    let titleLable      = GFTittleLable(textAlignment: .center, fontSize: 20)
    let messegaeLable   = GFBodyLable(textAlignment: .center)
    let actionButton    = GFButton(backgroundColor: .systemGreen, title: "Ok")
    
    var alerTitle   : String?
    var message     : String?
    var buttonTitle : String?
    
    let padding: CGFloat = 20
    
    init (title: String, message: String, buttonTitle: String){
        super.init(nibName: nil, bundle: nil)
        self.alerTitle   = title
        self.message     = message
        self.buttonTitle = buttonTitle
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        configureContainerView()
        configureTitleLable()
        configureMessageLable()
        configureActionButton()
    }
    
    func configureContainerView() {
        view.addSubview(containerView)
        containerView.backgroundColor       = .systemBackground
        containerView.layer.cornerRadius    = 16
        containerView.layer.cornerRadius    = 2
        containerView.layer.borderColor     = UIColor.white.cgColor
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 220)
            
        ])
    }
    
    func configureTitleLable() {
        containerView.addSubview(titleLable)
        titleLable.text = alerTitle ?? "Something went wrong"
        
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            titleLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            titleLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            titleLable.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    func configureActionButton() {
        containerView.addSubview(actionButton)
        actionButton.setTitle(buttonTitle ?? "Ok", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            containerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            containerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding),
            containerView.heightAnchor.constraint(equalToConstant: 44)
        ])
    }

    @objc func dismissVC(){
        dismiss(animated: true)
    }
    
    func configureMessageLable() {
        containerView.addSubview(messegaeLable)
        messegaeLable.text          = message ?? "Unable to complete requests"
        messegaeLable.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            containerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            containerView.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 8),
            containerView.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
        ])
    }
    

}
