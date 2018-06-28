//
//  SkillVC.swift
//  4-swoosh
//
//  Created by Jai Choubisa on 28/06/18.
//  Copyright © 2018 Jai Choubisa. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player : Player!
    
    @IBOutlet weak var playerTypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(player.desiredLeague!)
        
        playerTypeLabel.text = "Player Type : \(player.desiredLeague!.firstUppercased)"
    }

}

extension StringProtocol {
    var firstUppercased: String {
        guard let first = first else { return "" }
        return String(first).uppercased() + dropFirst()
    }
}
