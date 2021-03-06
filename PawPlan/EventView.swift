//
//  EventView.swift
//  PawPlan
//
//  Created by Paria Petramfar (student LM) on 4/6/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct EventView: View {
    
    
    @Binding var day : Day
    @Binding var event: Event
    @Environment(\.presentationMode) var presentation
    
    
    var body: some View {
        HStack{
            
            NavigationLink(destination: EventDetail(day: $day, event: $event)){
                
                List{
                    ForEach(day.events.indices, id:\.self){
                        i in
                        Group{
                            Text(self.event.title)
                                .font(Font.custom("teen", size: 25))
                                .foregroundColor(Color("darkPurple"))
                                .minimumScaleFactor(0.0001)
                                .font(.subheadline)
                            Text(self.event.description)
                                .font(Font.custom("teen", size: 20))
                            
                        }.background(Color.white.opacity(0.7))
                            .cornerRadius(10)
                            .padding(.horizontal, 5)
                    }
                }
            }
        }
    }
}



struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(day: Binding.constant(Day(year: "", month: Months.January, day1: "", dayOfWeek: "", events: [Event](), event: Event(title: "", type: types.pick, description: ""))), event: Binding.constant(Event(title: "", type: types.pick, description: "")))
    }
}
