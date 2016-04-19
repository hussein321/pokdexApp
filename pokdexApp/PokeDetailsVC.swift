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
    
    @IBOutlet weak var mainImg: UIImageView!
    
    
    @IBOutlet weak var mainLab: UILabel!
    
    
    @IBOutlet weak var typeLab: UILabel!
    
    @IBOutlet weak var defenceLab: UILabel!
    
    @IBOutlet weak var heightLab: UILabel!
    
    
    @IBOutlet weak var wightLab: UILabel!
    
    @IBOutlet weak var pokIdLab: UILabel!
    @IBOutlet weak var baseAtcLab: UILabel!
    
    @IBOutlet weak var currImgEvu: UIImageView!
    
    @IBOutlet weak var nextImgEvue: UIImageView!
    
    @IBOutlet weak var nextEvueLab: UILabel!
    
    
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
