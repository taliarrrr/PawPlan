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
    
    
    var body: some View {
        HStack{
            
            
            NavigationLink(destination: EventDetail(day: Binding.constant(Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [])), days: Binding.constant([Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [])]), event: Binding.constant(Event(title: "", type: "", description: "")), events: Binding.constant([Event(title: "String", type: "", description: "")]), save: false)){
                VStack(alignment: .leading){
                    Text(event.title)
                        .font(.system(size: 30))
                        .foregroundColor(.orange)
                        .font(.system(size: 200))
                        .minimumScaleFactor(0.0001)
                        .lineLimit(1)
                    Text(event.type)
                        .font(.system(size: 200))
                        .minimumScaleFactor(0.01)
                        .lineLimit(1)
                }
            }
        }.background(Color.white.opacity(0.7))
            .cornerRadius(20)
            .padding(.horizontal, 10)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(event: Binding.constant(Event(title: "", type: "", description: "")), events: Binding.constant([Event(title: "String", type: "", description: "")]))
    }
}
