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
    @Binding var feb: [Day]
    @Binding var march : [Day]
    @Binding var april: [Day]
    @Binding var may: [Day]
    @Binding var june: [Day]
    @Binding var july: [Day]
    @Binding var august: [Day]
    @Binding var sept: [Day]
    @Binding var oct: [Day]
    @Binding var nov: [Day]
    @Binding var dec: [Day]
    
    
    
    var body: some View {
        //NavigationLink(destination: DayDetail(day: $day, days: $days, event: $event, events: $events)){
        NavigationView{
            if month.month == "January"{
                List{
                    ForEach(jan.indices, id: \.self){
                        i in DayView(day: self.$jan[i], days: self.$jan, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april,  may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
            else if month.month == "February"{
                List{
                    ForEach(feb.indices, id: \.self){
                        i in DayView(day: self.$feb[i], days: self.$feb, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april,  may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
            else  if month.month == "March"{
                List{
                    ForEach(march.indices, id: \.self){
                        i in DayView(day: self.$march[i], days: self.$march, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april,  may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
            else if month.month == "April"{
                List{
                    ForEach(april.indices, id: \.self){
                        i in DayView(day: self.$april[i], days: self.$april, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april,  may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
            else if month.month == "May"{
                List{
                    ForEach(may.indices, id: \.self){
                        i in DayView(day: self.$may[i], days: self.$may, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april, may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
            else if month.month == "June"{
                List{
                    ForEach(june.indices, id: \.self){
                        i in DayView(day: self.$june[i], days: self.$june, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april, may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
            else if month.month == "July"{
                List{
                    ForEach(july.indices, id: \.self){
                        i in DayView(day: self.$july[i], days: self.$july, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april, may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
            else if month.month == "August"{
                List{
                    ForEach(august.indices, id: \.self){
                        i in DayView(day: self.$august[i], days: self.$august, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april, may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
            else if month.month == "September"{
                List{
                    ForEach(sept.indices, id: \.self){
                        i in DayView(day: self.$sept[i], days: self.$sept, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april, may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
            else if month.month == "October"{
                List{
                    ForEach(oct.indices, id: \.self){
                        i in DayView(day: self.$oct[i], days: self.$oct, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april, may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
            else if month.month == "November"{
                List{
                    ForEach(nov.indices, id: \.self){
                        i in DayView(day: self.$nov[i], days: self.$nov, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april, may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
            else if month.month == "December"{
                List{
                    ForEach(dec.indices, id: \.self){
                        i in DayView(day: self.$dec[i], days: self.$dec, event: self.$event, events: self.$events, jan: self.$jan, feb: self.$feb, march: self.$march, april: self.$april, may: self.$may, june: self.$june, july: self.$july, august: self.$august, sept: self.$sept, oct: self.$oct, nov: self.$nov, dec: self.$dec)
                    }
                }
            }
        }.navigationBarTitle("Days 2021")
        
        
    }
    
    struct MonthDetail_Previews: PreviewProvider {
        static var previews: some View {
            MonthDetail(months: Binding.constant([Month(month: "January")]), month: Binding.constant(Month(month: "January")), day: Binding.constant(Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))) , days: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), event: Binding.constant(Event(title: "", type: types.pick, description: "")), events: Binding.constant([Event(title: "", type: types.pick, description: "")]), jan: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), feb: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), march: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), april: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), may: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), june: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), july: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), august: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), sept:Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]) , oct: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), nov: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]), dec: Binding.constant([Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))]) )
        }
    }
}
