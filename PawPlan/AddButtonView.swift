//
//  AddButtonView.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct AddButtonView: View {
    
//    @Binding var event : Event
//    @Binding var events: [Event]
    @Binding var day : Day
    @Environment(\.presentationMode) var presentation
   
    
    var body: some View {
        
        NavigationLink(destination: AddEvents(day: $day)) {
            Image(systemName: "plus")
                .foregroundColor(.black)
            
        }
    }
}
struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView(day: Binding.constant(Day(year: "", month: Months.January, day1: "", dayOfWeek: "", events: [Event](), event: Event(title: "", type: types.pick, description: ""))))
    }
}
