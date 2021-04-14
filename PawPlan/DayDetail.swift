//
//  ContactDetail.swift
//  Contacts
//
//  Created by Swope, Thomas on 12/4/20.
//  Copyright © 2020 Swope, Thomas. All rights reserved.
//

import SwiftUI

struct DayDetail: View {
    
    
    @Binding var day : Day
    @Binding var days : [Day]
    @Binding var event : Event
    @Binding var events : [Event]
    @Environment(\.presentationMode) var presentation
    
    //change to something you want to choose from
    var types : [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    var body: some View {
        VStack{
            
            Text("\(day.month) \(day.day1), \(day.year)")
                .font(.system(size: 30))
                .foregroundColor(.orange)
            Text("\(day.dayOfWeek)")
                .font(.system(size: 20))
            
           
            
            
                NavigationView{
                    List{
                        ForEach(events.indices, id: \.self){
                            i in
                            EventView(event: self.$events[i], events: self.$events)
                        }
                    }.navigationBarTitle("Events")
                        .navigationBarItems(trailing: AddButtonView(events: $events, event: $event))
                }
            
               
            
            
            //can't do it yet, need events class
            //doesn't do correct thing
        }
    }
}
struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        DayDetail(day: Binding.constant(Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [])), days: Binding.constant([Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [])]), event: Binding.constant(Event(title: "", type: types.pick, description: "")), events: Binding.constant([Event(title: "", type: types.pick, description: "")]))
    }
}
