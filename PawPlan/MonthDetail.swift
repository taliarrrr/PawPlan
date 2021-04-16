//
//  MonthDetail.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 4/15/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct MonthDetail: View {
    
    func sort(){
        
    }
       @Binding var months : [Month]
       @Binding var month : Month
       @Binding var day: Day
       @Binding var days : [Day]
       @Binding var event : Event
       @Binding var events : [Event]
    @Binding var jan: [Day]
    
    
    
    var body: some View {
        NavigationLink(destination: DayDetail(day: $day, days: $days, event: $event, events: $events)){
            if month.month == "January"{
                NavigationView{
                    List{
                        ForEach(jan.indices, id: \.self)
                        i in DayView(
                    }
                }
                    
                
            }
        }
              
        
        
       
    
}

struct MonthDetail_Previews: PreviewProvider {
    static var previews: some View {
        MonthDetail(months: Binding.constant([Month(month: "January")]), month: Binding.constant(Month(month: "January")), day: Binding.constant(Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])) , days: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), event: Binding.constant(Event(title: "", type: "", description: "")), events: Binding.constant([Event(title: "", type: "", description: "")]), jan: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]))
    }
}
}
