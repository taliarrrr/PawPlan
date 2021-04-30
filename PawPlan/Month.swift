//
//  Month.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 4/14/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import Foundation
class Month: Identifiable{
    
    var id = UUID()
    var monthName : String
    var month : Months
    var daysInMonth : [Day]

    init(monthName: String, month : Months, daysInMonth : [Day]){
        self.monthName = monthName
        self.month = month
        self.daysInMonth = daysInMonth
    }
}


