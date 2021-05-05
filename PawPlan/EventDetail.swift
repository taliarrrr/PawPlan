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
                self.presentation.wrappedValue.dismiss() }) {
                    
                    Text("Save")
                    
            }
            Button("Send Notification") {
                // 1.
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound])
                {
                    success, error in
                }
                
                // 2.
                let content = UNMutableNotificationContent()
                content.title = "Notification Tutorial"
                content.subtitle = "from ioscreator.com"
                content.body = " Notification triggered"
                content.sound = UNNotificationSound.default
                
                
                // 3.
                
                guard let imageURL = Bundle.main.url(forResource: "Paw", withExtension: "png")
                    else{return}
                
                
                
                let attachment = try! UNNotificationAttachment(identifier: "Paw", url: imageURL, options: .none)
                
                content.attachments = [attachment]
                
                // 4.
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                
                let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
                
                
                // 5.
                
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

