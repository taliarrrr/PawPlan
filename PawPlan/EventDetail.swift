//
//  EventView.swift
//  PawPlan
//
//  Created by Paria Petramfar (student LM) on 3/25/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct EventDetail: View {
    
    @Binding var day : Day
    @Binding var days : [Day]
    @Binding var event : Event
    @Binding var events : [Event]
    
    @Environment(\.presentationMode) var presentation
    
    var types : [String] = ["Walk","Feed", "Appointment", "Medicines", "Wash"]
    var isInList : Bool = true
    
    var body: some View {
        VStack{
            Form{
                Section() {
                    TextField("Title", text: $event.title)
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                    TextField("Description", text: $event.description)
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    
                }
                Section(){
                    Picker(selection: $event.type, label: Text("Type")) {
                        ForEach(0..<types.count){ i in
                            Text(self.types[i])
                        }
                    }
                    
                }
            }

            Button(action: {
                if (self.isInList){
                               self.events.append(self.event)
                           }
                self.events.sort(by: {$0.title < $1.title})
                           self.presentation.wrappedValue.dismiss()
                           
                       }) {
                           if self.isInList{
                               Text("Save")

                           }
                           else{
                               Text("Edit")
                           }
                       }
            
            
        }
    }
    
    struct EventDetail_Previews: PreviewProvider {
        static var previews: some View {
            EventDetail(day: Binding.constant(Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [])), days: Binding.constant([Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [])]), event: Binding.constant(Event(title: "", type: "", description: "")), events: Binding.constant([Event(title: "", type: "", description: "")]))
        }
    }
}
