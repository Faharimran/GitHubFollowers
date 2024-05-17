//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Fahar Imran on 14/05/24.
//

import UIKit

extension UIViewController {
    func presentGFAlertOnMainThread(title: String?,message: String?, buttonTitle: String?){
        DispatchQueue.main.async {
            let alerVC = GFAlertVC(title: title ?? "aler", message: message ?? "not printer", buttonTitle: buttonTitle ?? "error")
            alerVC.modalPresentationStyle = .overFullScreen
            alerVC.modalTransitionStyle = .crossDissolve
            self.present(alerVC,animated: true)
        }
    }
}
