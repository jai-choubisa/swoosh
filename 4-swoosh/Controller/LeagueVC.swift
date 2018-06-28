//
//  LeagueVC.swift
//  4-swoosh
//
//  Created by Jai Choubisa on 28/06/18.
//  Copyright © 2018 Jai Choubisa. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player : Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player = Player()
    }
    
    //next button clicked - go to SkillVC
    @IBAction func onNextTapped(_ sender: Any) {
            performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    //Pass data before performing segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue : UIStoryboardSegue){
        
    }

    @IBAction func onMensBtnTapped(_ sender: Any) {
        selectedPlayerType(type: "mens")
    }
    
    @IBAction func onWomensBtnTapped(_ sender: Any) {
        selectedPlayerType(type: "womens")
    }
    
    @IBAction func onCoedBtnTapped(_ sender: Any) {
        selectedPlayerType(type: "coed")
    }
    
    func selectedPlayerType(type : String) {
        player.desiredLeague = type
        nextBtn.isEnabled = true
    }
    
}
