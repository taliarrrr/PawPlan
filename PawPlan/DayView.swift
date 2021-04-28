//
//  DayView.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct DayView: View {
    
    
    
    @Binding var day: Day
    @Binding var days : [Day]
    
    @Binding var event : Event
    @Binding var events : [Event]

    @Environment(\.presentationMode) var presentation


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
            
             Image("background").frame(width: 390, height: 55, alignment: .bottomLeading).cornerRadius(10).scaledToFill()
            HStack{
                NavigationLink(destination: DayDetail(day: $day, days: $days, event: $event, events: $events)){
                    VStack{
                        HStack (alignment: .center){
                        
                            Text("         " + day.month + " ").font(Font.custom("teen", size: 25))
                                .foregroundColor(Color("darkPurple"))
                                .lineLimit(2)
                               
                            
                            Text(String(day.day1)).font(Font.custom("teen", size: 25)) .foregroundColor(.black)
                                .lineLimit(1)
                        }
                    }
                }.background(Color.white.opacity(0.9))
                    .padding(.horizontal, 30).frame(width: 330, height: 40, alignment: .center)
            }
        }
    }
}


struct Day_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: Binding.constant(Day(year: "2021", month: "December", day1: "1", dayOfWeek: "Monday", events: [], event: Event(title: "", type: types.pick, description: ""))), days: Binding.constant([Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [], event: Event(title: "", type: types.pick, description: ""))]), event: Binding.constant(Event(title: "", type: types.pick, description: "")), events: Binding.constant([Event(title: "", type: types.pick, description: "")]), jan: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), feb:Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), march: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), april: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), may: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), june: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), july: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), august: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), sept:Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), oct:Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), nov: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]),  dec: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))])  )
    }

}
