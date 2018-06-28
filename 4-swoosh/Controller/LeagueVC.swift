//
//  LeagueVC.swift
//  4-swoosh
//
//  Created by Jai Choubisa on 28/06/18.
//  Copyright © 2018 Jai Choubisa. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
            performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue : UIStoryboardSegue){
        
    }

}
