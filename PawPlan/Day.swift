//
//  Day.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import Foundation

class Day: Identifiable{
    
    var id = UUID()
    var year : String
    var month : String
    var day1 : String

    init(year : String, month : String, day1 : String){
        self.year = year
        self.month = month
        self.day1 = day1
    }
}
