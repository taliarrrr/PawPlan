//
//  ContentView.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 3/11/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var days : [Day] = [Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Tuesday", events: []),Day(year: "2021", month: "March", day1: "2", dayOfWeek: "Wednesday", events: []),Day(year: "2021", month: "March", day1: "3", dayOfWeek: "Thursday", events: []), Day(year: "2021", month: "March", day1: "4", dayOfWeek: "Thursday", events: []), Day(year: "2021", month: "March", day1: "5", dayOfWeek: "Thursday", events: []), Day(year: "2021", month: "March", day1: "6", dayOfWeek: "Thursday", events: []), Day(year: "2021", month: "March", day1: "7", dayOfWeek: "Thursday", events: []), Day(year: "2021", month: "March", day1: "8", dayOfWeek: "Thursday", events: [])]
    
    @State var day : Day = Day(year: "2021", month: "March", day1: "24", dayOfWeek: "Tuesday", events: [] )
    
    @State var events : [Event] = [Event(title: "", type: "", description: "")]
    @State var event : Event = Event(title: "", type: "", description: "")
    
    @State var pet : Pet = Pet(name: "", dogOrCat: "", type: "")
    
    var body: some View {
            
        ZStack{
            
            /*{
             for i in 1...31{
             days.insert(Day(year: 2021, month: "January", day1: i))
             }*/
            NavigationView{
                List{
                    ForEach(days.indices, id: \.self){
                        i in DayView(day: self.$days[i], days: self.$days, event: self.$event, events: self.$events)
                    }
                }.navigationBarTitle("Days")
                    .navigationBarItems(trailing: InfoButtonView(pet: $pet))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
