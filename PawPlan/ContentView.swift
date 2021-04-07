//
//  ContentView.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 3/11/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI
import Foundation

func addTime(days: [Day], day: Day, date: Date, dateFormatter: DateFormatter) {

    for day in days{
        let dateString = dateFormatter.string(from: date.addingTimeInterval(86400))
        day.day1 = dateString
}
}
struct ContentView: View {
    @State var date = Date()
    
    
    @State var dateFormatter = DateFormatter()

    @State var days : [Day] = [Day(year: "2021", month: "March", day1: "24", dayOfWeek: "Tuesday", events: [] )]
    
    
    @State var day : Day = Day(year: "2021", month: "March", day1: "24", dayOfWeek: "Tuesday", events: [] )
    
    var body: some View {
        ZStack{
            NavigationView{
                List{
                    ForEach(days.indices, id: \.self){
                        i in DayView(day: self.$days[i], days: self.$days)
                    }
                }.navigationBarTitle("Days")
            }
        }
        func changeDate(){
            let current = Calendar.current
            let day2 = current.component(.day, from: self.date)
            self.data = Day(year: <#T##String#>, month: <#T##String#>, day1: <#T##String#>, dayOfWeek: <#T##String#>, events: <#T##[Event]#>)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


