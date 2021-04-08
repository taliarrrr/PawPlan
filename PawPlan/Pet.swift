//
//  Pet.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 4/8/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import Foundation

class Pet: Identifiable{
    
    var name : String
    var dogOrCat : String
    var type : String
    

    init(name : String, dogOrCat : String, type: String){
        self.name = name
        self.dogOrCat = dogOrCat
        self.type = type
    }
    
}
