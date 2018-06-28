//
//  BorderButton.swift
//  4-swoosh
//
//  Created by Jai Choubisa on 26/06/18.
//  Copyright © 2018 Jai Choubisa. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
