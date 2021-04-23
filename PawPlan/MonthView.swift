//
//  MonthView.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 4/14/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI
import UIKit


struct MonthView: View {
    @Binding var months : [Month]
    @Binding var month : Month
    @Binding var day: Day
    @Binding var days : [Day]
    @Binding var event : Event
    @Binding var events : [Event]
    @Binding var jan : [Day]
    @Binding var feb : [Day]
    @Binding var march: [Day]
    @Binding var april: [Day]
    @Binding var may: [Day]
    @Binding var june: [Day]
    @Binding var july:[Day]
    @Binding var august: [Day]
    @Binding var sept: [Day]
    @Binding var oct: [Day]
    @Binding var nov: [Day]
    @Binding var dec: [Day]
    
    
    
    var body: some View {
        ZStack{
                   
                Image("background").frame(width: 390, height: 50, alignment: .bottomLeading).cornerRadius(20).scaledToFill()
        HStack{
            NavigationLink(destination: MonthDetail(months: $months, month: $month, day: $day, days: $days, event: $event, events: $events, jan: $jan, feb: $feb, march: $march, april: $april, may: $may, june: $june, july: $july, august: $august, sept: $sept, oct: $oct , nov: $nov, dec: $dec)){
                Text(month.month).font(Font.custom("Meadow", size: 50))
                    .foregroundColor(.purple)
                .minimumScaleFactor(0.0001)
                    .lineLimit(1)
                
            }
            
        }
    }
    }
    
    struct MonthView_Previews: PreviewProvider {
        static var previews: some View {
            MonthView(months: Binding.constant([Month(month: "January")]), month: Binding.constant(Month(month: "January")), day: Binding.constant(Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))) , days: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), event: Binding.constant(Event(title: "", type: types.pick, description: "")), events: Binding.constant([Event(title: "", type: types.pick, description: "")]), jan: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), feb: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), march: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), april: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), may: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), june: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), july: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), august: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), sept:Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]) , oct: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), nov: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), dec: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]) )
        }
        
    }
}

