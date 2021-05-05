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
    @Environment(\.presentationMode) var presentation
    
    
    //change to something you want to choose from
    //    var types : [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    var body: some View {
        VStack{
            
            Text("\(day.month) \(day.day1), \(day.year)")
                .font(.system(size: 30))
                .foregroundColor(.orange)
            Text("\(day.dayOfWeek)")
                .font(.system(size: 20))
            
            
            NavigationView{
                List{
                    ForEach(day.events.indices, id: \.self){
                        i in
                        EventView(event: self.$day.events[i], day: self.$day)
                    }.onDelete(perform: self.delete)
                    
                    
                }
                
            }.navigationBarTitle("Events")
                .navigationBarItems(trailing: AddButtonView(event: $event, day: self.$day))
            
        }
        
    }
    func delete(at indexSet: IndexSet) {
        day.events.append(Event(title: "", type: types.pick, description: ""))
        day.events.remove(atOffsets: indexSet)
            self.presentation.wrappedValue.dismiss()
        
    }
    
}




struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        DayDetail(day: Binding.constant(Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [], event: Event(title: "", type: types.pick, description: ""))), days: Binding.constant([Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [], event: Event(title: "", type: types.pick, description: ""))]), event: Binding.constant(Event(title: "", type: types.pick, description: "")))
    }
}

