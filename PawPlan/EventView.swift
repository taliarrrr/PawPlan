//
//  EventView.swift
//  PawPlan
//
//  Created by Paria Petramfar (student LM) on 4/6/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct EventView: View {
    
    @Binding var event : Event
    @Binding var events : [Event]
    @Binding var day : Day
    @Environment(\.presentationMode) var presentation
    
    
    var body: some View {
        HStack{
            
            NavigationLink(destination: EventDetail(event: $event, events: $events, day: $day, isInList: true)){
                VStack(alignment: .leading){
                    Text(day.event.title)
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .minimumScaleFactor(0.0001)
                        .font(.subheadline)
                    Text(day.event.description)
                        .font(.system(size: 20))
                    
                    
                    
                }
            }
        }.background(Color.white.opacity(0.7))
            .cornerRadius(10)
            .padding(.horizontal, 5)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(event: Binding.constant(Event(title: "", type: types.pick, description: "")), events: Binding.constant([Event(title: "", type: types.pick, description: "")]), day: Binding.constant(Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.Feed, description: "")], event: Event(title: "", type: types.pick, description: ""))))
    }
}
