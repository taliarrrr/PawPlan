//
//  EventView.swift
//  PawPlan
//
//  Created by Paria Petramfar (student LM) on 3/25/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct EventDetail: View {
    
    @Binding var
    @Binding var event : Event
    @Binding var events : [Event]
    
    @Environment(\.presentationMode) var presentation
    
    
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
                    Picker("Type", selection: $event.type ) {
                        Text(" ").tag(types.pick)
                        Text("Walk").tag(types.Walk)
                        Text("Feed").tag(types.Feed)
                        Text("Appointment").tag(types.Appointment)
                        Text("Medicines").tag(types.Medicines)
                        Text("Wash").tag(types.Wash)
                    }
                    
                }
                
                
                
            }
            
            Button(action: {
                if (!self.isInList){
                    self.events.append(self.event)
                }
                self.events.sort(by: {$0.title < $1.title})
                self.presentation.wrappedValue.dismiss()
                
            }) {
                if !self.isInList {
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
            EventDetail(event: Binding.constant(Event(title: "", type: types.pick, description: "")), events: Binding.constant([Event(title: "", type: types.pick, description: "")]))
        }
    }
}
