//
//  DayView.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI
import Foundation

struct DayView: View {
    
    
    
    @Binding var day: Day
    @Binding var days : [Day]
    
    @Binding var event : Event
    @Binding var events : [Event]
    @Binding var jan: [Day]
    @Binding var feb: [Day]
    @Binding var march: [Day]
    @Binding var april: [Day]
    @Binding var may: [Day]
    @Binding var june: [Day]
    @Binding var july: [Day]
    @Binding var august: [Day]
    @Binding var sept: [Day]
    @Binding var oct: [Day]
    @Binding var nov: [Day]
    @Binding var dec : [Day]
    
    var body: some View {
        ZStack{
            
            // Image("background").frame(width: 390, height: 100, alignment: .bottomLeading).cornerRadius(20).scaledToFill()
            HStack{
                NavigationLink(destination: DayDetail(day: $day, days: $days, event: $event, events: $events)){
                    VStack{
                        HStack{
                        
                            Text("         " + day.month + " ").font(.system(size: 26))
                                .foregroundColor(.orange)
                                //.minimumScaleFactor(0.5)
                                .lineLimit(2)
                            
                            Text(String(day.day1)).font(.system(size: 26))
                                .minimumScaleFactor(0.0001)
                                .lineLimit(1)
                            
                          //  Text(day.year + "   ").font(.system(size: 30))
                             //   .foregroundColor(.orange)
                             //   .minimumScaleFactor(0.0001)
                             //   .lineLimit(1)
                        }
                    }
                }.background(Color.white.opacity(0.9))
                    .padding(.horizontal, 30).frame(width: 300, height: 40, alignment: .center)
            }
        }
    }
}

struct Day_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: Binding.constant(Day(year: "2021", month: "December", day1: "1", dayOfWeek: "Monday", events: [])), days: Binding.constant([Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [])]), event: Binding.constant(Event(title: "", type: "", description: "")), events: Binding.constant([Event(title: "", type: "", description: "")]), jan: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), feb:Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), march: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), april: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), may: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), june: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), july: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), august: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), sept:Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), oct:Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]), nov: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])]),  dec: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: "", description: "")])])  )
    }
}
