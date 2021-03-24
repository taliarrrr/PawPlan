//
//  Event.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/24/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import Foundation

class Event: Identifiable{
    
    var type : String
    var description : String
    

    init(type : String, description: String){
        self.type = type
        self.description = description
    }
}
