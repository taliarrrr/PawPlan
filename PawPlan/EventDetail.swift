//
//  EventView.swift
//  PawPlan
//
//  Created by Paria Petramfar (student LM) on 3/25/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI
import UserNotifications

struct EventDetail: View {
    
    
    @Binding var day : Day
    
    
    @Environment(\.presentationMode) var presentation
    
    
    var isInList : Bool = true
    
    
    @State var newEvent: Event = Event(title: "", type: types.pick, description: "")
    
    @Binding var event : Event
    
    var body: some View {
        
        VStack{
            Form{
                Section() {
                    TextField("Title", text: $event.title)
                        .font(.system(size: 25))
                        .foregroundColor(.black).lineLimit(2)
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
                self.day.events.append(self.event)
                self.day.events.sort(by: {$0.title < $1.title})
                print("save")
                self.presentation.wrappedValue.dismiss() }) {
                    
                    Text("Save")
                    
            }
            
            Spacer()
            
            //  if !checked{
            Button("Check Verification") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }
            
            
            Button("Send Notification"){
                
                let content = UNMutableNotificationContent()
                content.title = self.event.title
                content.subtitle = "\(self.event.description) + \(self.event.type)"
                content.sound = UNNotificationSound.default
                
                // show this notification five seconds from now
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                
                // choose a random identifier
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                // add our notification request
                UNUserNotificationCenter.current().add(request)
                
            }
            
        }
    }
    
}

struct EventDetail_Previews: PreviewProvider {
    static var previews: some View {
        EventDetail(day: Binding.constant(Day(year: "", month: Months.January, day1: "", dayOfWeek: "", events: [Event](), event: Event(title: "", type: types.pick, description: ""))), event: Binding.constant(Event(title: "", type: types.pick, description: "")))
    }
}

