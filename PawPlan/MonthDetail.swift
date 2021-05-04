//
//  MonthDetail.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 4/15/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct MonthDetail: View {
    
    @Binding var days : [Day]
    var m: Month
    @Binding var event: Event
    
    
    var body: some View {
        NavigationView{
            
            List{
                ForEach(days.indices, id: \.self){
                    i in
                    Group{
                        if self.days[i].month == self.m.month {
                           
                            DayView(day: self.$days[i], event: self.$event)
                        }
                    }
                }
            }
            
        }
        
        
    }
    
    struct MonthDetail_Previews: PreviewProvider {
        static var previews: some View {
            MonthDetail(days: Binding.constant([Day]()), m: Month(monthName: "January", month: Months.January, daysInMonth: MonthList.jan), event: Binding.constant(Event(title: "", type: types.pick, description: "")) )
        }
    }
}
