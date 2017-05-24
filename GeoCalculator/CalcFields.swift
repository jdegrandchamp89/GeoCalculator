//
//  CalcFields.swift
//  GeoCalculator
//
//  Created by user127998 on 5/24/17.
//  Copyright © 2017 Jonathan Engelsma. All rights reserved.
//

import Foundation

import UIKit

class GeoCalcTextField: DecimalMinusTextField{
    
    override func awakeFromNib() {
        self.tintColor = FOREGROUND_COLOR
        self.backgroundColor = UIColor.clear
        self.textColor = FOREGROUND_COLOR
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 5.0
        
        guard let ph = self.placeholder  else {
            return
        }
        
        self.attributedPlaceholder =
            NSAttributedString(string: ph, attributes: [NSForegroundColorAttributeName :
                FOREGROUND_COLOR])
    }
    
}

class GeoCalcLabel: UILabel {
    
    override func awakeFromNib() {
        self.tintColor = FOREGROUND_COLOR
    }
    
}

class GeoCalcButton: UIButton {
    
    override func awakeFromNib() {
        self.backgroundColor = FOREGROUND_COLOR
        self.tintColor = BACKGROUND_COLOR
        self.layer.cornerRadius = 5.0
    }
}
