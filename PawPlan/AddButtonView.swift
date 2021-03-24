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
    @Binding var days : [Day]

    var body: some View {
        //button is there, just doesn't do the right thing or go to the correct spot in navigation link
        NavigationLink(destination: DayDetail(day: Binding.constant(Day(year: "", month: "", day1: "", dayOfWeek: "")), days: $days, events: <#Binding<[Event]>#>)) {
            Image(systemName: "plus")
                .foregroundColor(.orange)
                .scaleEffect(3)
                .padding(.all, 20)
                .padding(.trailing)
            
        }
    }
}
struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        //will be events
        AddButtonView(days: Binding.constant([Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday")]))
    }
}
