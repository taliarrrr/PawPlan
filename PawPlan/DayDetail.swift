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

    @Environment(\.presentationMode) var presentation
    
   
    
    var body: some View {
        VStack{
            
            Text("\(day.month)" + " \(day.day1)," + "\(day.year)").font(Font.custom("teen", size: 40)).foregroundColor(Color("darkPurple"))
        
            NavigationView{
                    List{
                        ForEach(day.events.indices, id: \.self){
                            i in
                            EventView(day: self.$day)
                        }
                    }.navigationBarItems(trailing: AddButtonView(day: $day))
                }
        }
    }
}
struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        DayDetail(day: Binding.constant(Day(year: "", month: Months.January, day1: "", dayOfWeek: "", events: [Event](), event: Event(title: "", type: types.pick, description: ""))))
    }
}
