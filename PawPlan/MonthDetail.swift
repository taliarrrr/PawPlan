//
//  MonthDetail.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 4/15/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct MonthDetail: View {
    @Binding var months : [Month]
    @Binding var month : Month
    @Binding var day: Day
    @Binding var days : [Day]
    @Binding var event : Event
    @Binding var events : [Event]
    
    var body: some View {
        VStack{
                   
                   Text("\(day.month) \(day.day1), \(day.year)")
                       .font(.system(size: 30))
                       .foregroundColor(.orange)
                   Text("\(day.dayOfWeek)")
                       .font(.system(size: 20))
                   
                  

                   
                       NavigationView{
                           List{
                          /*     ForEach(months.indices, id: \.self){
                                   i in
                                   DayView(event: self.$events[i], events: self.$events)
                               }
                           }.navigationBarTitle("Events")
                               .navigationBarItems(trailing: AddButtonView(events: $events))
                       }*/
                   
                      
    }
}

struct MonthDetail_Previews: PreviewProvider {
    static var previews: some View {
        MonthDetail(months: Binding.constant([Month(month: "January")]), month: Binding.constant(Month(month: "January")), day: Binding.constant(Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])) , days: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), event: Binding.constant(Event(title: "", type: "", description: "")), events: Binding.constant([Event(title: "", type: "", description: "")]))
    }
}
}
