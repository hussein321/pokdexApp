//
//  PokeDetailsVC.swift
//  pokdexApp
//
//  Created by hoseen on 4/18/16.
//  Copyright © 2016 alone. All rights reserved.
//

import UIKit

class PokeDetailsVC: UIViewController {
    
    @IBOutlet weak var name : UILabel!
    var pokemon : Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = pokemon.name

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
