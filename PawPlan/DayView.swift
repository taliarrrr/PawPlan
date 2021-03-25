//
//  DayView.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct DayView: View {
    
    @Binding var day: Day
    @Binding var days : [Day]
    
    var body: some View {
        HStack{
            NavigationLink(destination: DayDetail(day: $day, days: $days)){
                VStack(alignment: .leading){
                    Text(day.month).font(.system(size: 30))
                        .foregroundColor(.orange)
                        .minimumScaleFactor(0.0001)
                        .lineLimit(1)
                    Text(day.day1).font(.system(size: 30))
                        .minimumScaleFactor(0.0001)
                        .lineLimit(1)
                    Text(day.year).font(.system(size: 30))
                        .foregroundColor(.orange)
                        .minimumScaleFactor(0.0001)
                        .lineLimit(1)
                }
            }
        }.background(Color.white.opacity(0.7))
            .cornerRadius(20)
            .padding(.horizontal,10)
    }
}


struct Card_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: Binding.constant(Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [])), days: Binding.constant([Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday", events: [])]))
    }
}
