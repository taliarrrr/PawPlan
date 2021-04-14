//
//  EventView.swift
//  PawPlan
//
//  Created by Paria Petramfar (student LM) on 4/6/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct EventView: View {
    
    @Binding var event : Event
    @Binding var events : [Event]
    @Environment(\.presentationMode) var presentation
    
    
    var body: some View {
        HStack{
            
            NavigationLink(destination: EventDetail(event: $event, events: $events, isInList: true)){
                VStack(alignment: .leading){
                Text(event.title)
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                    .font(.system(size: 50))
                    .minimumScaleFactor(0.0001)
                    .lineLimit(1)

                }
            }
        }.background(Color.white.opacity(0.7))
            .cornerRadius(20)
            .padding(.horizontal, 10)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(event: Binding.constant(Event(title: "", type: types.pick, description: "")), events: Binding.constant([Event(title: "", type: types.pick, description: "")]))
    }
}
