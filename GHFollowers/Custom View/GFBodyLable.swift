//
//  GFBodyLable.swift
//  GHFollowers
//
//  Created by Fahar Imran on 12/05/24.
//

import UIKit

class GFBodyLable: UILabel {

    override init(frame: CGRect) {
        super .init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    init(textAlignment: NSTextAlignment){
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        
        configure()
    }
    
    private func configure(){
        textColor                                 = .secondaryLabel
        font                                      = .preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth                 = true
        minimumScaleFactor                        = 0.75
        lineBreakMode                             = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }

}
