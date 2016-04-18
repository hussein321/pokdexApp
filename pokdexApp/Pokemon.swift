//
//  pokemon.swift
//  pokdexApp
//
//  Created by hoseen on 4/18/16.
//  Copyright © 2016 alone. All rights reserved.
//

import Foundation
class  Pokemon {
    private var _name : String!
    private var _pokdexId : Int!
    var name : String {
        return _name
    }
    var pokdexId : Int {
        return _pokdexId
    }
    init( name : String, pokdexId : Int){
        self._name = name
        self._pokdexId = pokdexId
    }
}
