//
//  AddButtonView.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct AddButtonView: View {
    
    //for when we make a list of events, for now uses days
    @Binding var events : [Event]
    
    var body: some View {
        //button is there, just doesn't do the right thing or go to the correct spot in navigation link
        NavigationLink(destination: EventDetail(day: Binding.constant(Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [])), days: Binding.constant([Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [])]), event: Binding.constant(Event(title: "", type: "", description: "")), events: Binding.constant([Event(title: "String", type: "", description: "")]))) {
            Image(systemName: "plus")
                .foregroundColor(.black)
            
        }
    }
}
struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        //will be events
        AddButtonView(events: Binding.constant([Event(title: "", type: "", description: "")]))
    }
}
