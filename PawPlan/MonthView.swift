//
//  MonthView.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 4/14/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct MonthView: View {
    @Binding var months : [Month]
    @Binding var month : Month
    @Binding var day: Day
    @Binding var days : [Day]
    @Binding var event : Event
    @Binding var events : [Event]
    
    var body: some View {
        HStack{
        NavigationLink(destination: DayView(day: $day, days: $days, event: $event, events: $events)){
            Text("\(month.month)").font(.system(size: 30))
            .foregroundColor(.orange)
            .minimumScaleFactor(0.0001)
            .lineLimit(1)
        }
    }
}

struct MonthView_Previews: PreviewProvider {
    static var previews: some View {
        MonthView(months: Binding.constant([Month(month: "January")]), month: Binding.constant(Month(month: "January")), day: Binding.constant(Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])) , days: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), event: Binding.constant(Event(title: "", type: "", description: "")), events: Binding.constant([Event(title: "", type: "", description: "")]))
    }

}
}
