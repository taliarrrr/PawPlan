//
//  Day.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import Foundation

enum Months : String, CaseIterable, Identifiable{
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
    
    var id: String {self.rawValue}
}

class Day: Identifiable{
    
    var id = UUID()
    var year : String
    var month : Months
    var day1 : String
    var dayOfWeek : String
    var events : [Event]
    var event : Event
    
    init(year : String, month : Months, day1 : String, dayOfWeek : String, events : [Event], event : Event){
        self.year = year
        self.month = month
        self.day1 = day1
        self.dayOfWeek = dayOfWeek
        self.events = events
        self.event = event
    }
}
