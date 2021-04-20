//
//  Event.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/24/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import Foundation

enum types : String, CaseIterable, Identifiable{
    case pick
    case Walk
    case Feed
    case Appointment
    case Medicines
    case Wash
    
    var id: String {self.rawValue}
}

class Event: Identifiable{
    
    var title : String
    var type : types
    var description : String
    

    init(title : String, type : types, description: String){
        self.title = title
        self.type = type
        self.description = description
    }
}
