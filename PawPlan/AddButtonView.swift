//
//  AddButtonView.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct AddButtonView: View {
    
    @Binding var events : [Event]
    @Binding var event : Event
    @Binding var day : Day
    
    var body: some View {
        
        NavigationLink(destination: EventDetail(event: Binding.constant(Event(title: "", type: types.pick, description: "")), events: $events, day: $day, isInList: false)) {
            Image(systemName: "plus")
                .foregroundColor(.black)
            
        }
    }
}
struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        //will be events
        AddButtonView(events: Binding.constant([Event(title: "", type: types.pick, description: "")]), event: Binding.constant(Event(title: "", type: types.pick, description: "")), day: Binding.constant(Day(year: "", month: "", day1: "", dayOfWeek: "", events: [Event(title: "", type: types.pick, description: "")], event: Event(title: "", type: types.pick, description: ""))))
    }
}
