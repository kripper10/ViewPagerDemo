//
//  PersonInfo.swift
//  test
//
//  Created by Chris on 30/11/2016.
//  Copyright © 2016 Chris. All rights reserved.
//

import Foundation


class PersonInfo {
    
    private var _name : String!
    private var _age : Int!
    
    var name: String {
        return _name
    }
    
    var age: Int {
        return _age
    }
    
    init(name: String, age: Int){
        self._name = name
        self._age = age
        
    }
    
}
