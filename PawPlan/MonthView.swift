//
//  MonthView.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 4/14/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI
import UIKit


struct MonthView: View {

    @Binding var days : [Day]
    var m: Month
    @Binding var event: Event
    
    var body: some View {
        ZStack{
            
                Image("background").frame(width: 1100, height: 55, alignment: .bottomLeading).cornerRadius(10)
            
            HStack{
                NavigationLink(destination: MonthDetail(days: $days, m: m, event: $event)){
                    Text(m.monthName).font(Font.custom("teen", size: 50))
                        .foregroundColor(Color("darkPurple"))
                        .minimumScaleFactor(0.0001)
                        .lineLimit(1)
                    
                }
                
            }
        }
    }
    
    struct MonthView_Previews: PreviewProvider {
        static var previews: some View {
            MonthView(days: Binding.constant([Day]()), m: Month(monthName: "January", month: Months.January, daysInMonth: [Day]()), event: Binding.constant(Event(title: "", type: types.pick, description: "")) )
        }
        
    }
}

