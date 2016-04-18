//
//  pokeVC.swift
//  pokdexApp
//
//  Created by hoseen on 4/18/16.
//  Copyright © 2016 alone. All rights reserved.
//

import UIKit

class pokeVC: UICollectionViewCell {
    @IBOutlet weak var thumbImg : UIImageView!
    @IBOutlet weak var nameLable :UILabel!
    
    var pokemon : Pokemon!
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    func cofigureCell (pokemon : Pokemon){
        self.pokemon = pokemon
        nameLable.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named : "\(self.pokemon.pokdexId)")
    }
}
