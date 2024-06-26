//
//  GFTextfield.swift
//  GHFollowers
//
//  Created by Fahar Imran on 10/05/24.
//

import UIKit

class GFTextfield: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius          = 10
        layer.borderColor           = UIColor.systemGray4.cgColor
        layer.borderWidth           = 2
        textColor                   = .label
        tintColor                   = .label
        textAlignment               = .center
        font                        = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth   = true
        minimumFontSize             = 12
        backgroundColor             = .tertiarySystemBackground
        autocorrectionType          = .no
        returnKeyType               = .go
        placeholder                 = "Enter user name"
    }
    
}
