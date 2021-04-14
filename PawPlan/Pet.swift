//
//  Pet.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 4/8/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import Foundation

enum typesOfPets : String, CaseIterable, Identifiable{
    case pick
    case dog
    case cat
    
    var id: String {self.rawValue}
}

class Pet: Identifiable{
    
    var name : String
    var dogOrCat : String
    var type : typesOfPets
    

    init(name : String, dogOrCat : String, type: typesOfPets){
        self.name = name
        self.dogOrCat = dogOrCat
        self.type = type
    }
    
}
