//
//  Card.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct Card: View {
    
    @Binding var day: Day
    
    var body: some View {
//        HStack{
//            NavigationLink(<#LocalizedStringKey#>, destination: DayDetail(day: $day){
//                VStack(alignment: .leading){
//                    Text(day.month).font(.system(size: 30))
//                        .foregroundColor(.orange)
//                        .minimumScaleFactor(0.0001)
//                        .lineLimit(1)
//                    Text(day.day1).font(.system(size: 30))
//                        .minimumScaleFactor(0.0001)
//                        .lineLimit(1)
//                    Text(day.year).font(.system(size: 30))
//                    .foregroundColor(.orange)
//                    .minimumScaleFactor(0.0001)
//                    .lineLimit(1)
//                }
//            }
//        )}
//    }
        Text("Hello World")
}


//struct Card_Previews: PreviewProvider {
//    static var previews: some View {
//        Card(day: Binding.constant(Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday")))
//    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
