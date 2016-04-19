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
    
    
    private var _descreption : String!
    private var _type : String!
    private var _dedance : String!
    private var _height : String!
    private var _wight : String!
    private var _attck : String!
    private var _nextEvueText : String!
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
