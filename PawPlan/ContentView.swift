//
//  ContentView.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 3/11/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI
import Foundation


/*func addTime(days: [Day], day: Day, date: Date, dateFormatter: DateFormatter) {

    for day in days{
        let dateString = dateFormatter.string(from: date.addingTimeInterval(86400))
        day.day1 = dateString
}
}*/



struct ContentView: View {
  /*  func changeDate(){
              let current = Calendar.current
              let day2 = current.component(.day, from: self.date)
             self.data = Day(year: "", month: "", day1: String(day2), dayOfWeek: "", events: [Event(type: "", description: "")])
              self.days.append(self.data)
              self.date = date.addingTimeInterval(86400)
              
          }*/
    func createDates() -> [Day]{
        for _ in 1...365{
            for a in 1...31{
                self.days.append(Day(year: "2021", month: "January", day1: String(a), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
            for b in 1...30{
                self.days.append(Day(year: "2021", month: "February", day1: String(b), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
            for c in 1...31{
                self.days.append(Day(year: "2021", month: "March", day1: String(c), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
            for d in 1...30{
                self.days.append(Day(year: "2021", month: "April", day1: String(d), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
            for e in 1...31{
                self.days.append(Day(year: "2021", month: "May", day1: String(e), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
            for f in 1...30{
                self.days.append(Day(year: "2021", month: "June", day1: String(f), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
            for g in 1...31{
                self.days.append(Day(year: "2021", month: "July", day1: String(g), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
            for h in 1...30{
                self.days.append(Day(year: "2021", month: "August", day1: String(h), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
            for j in 1...30{
                self.days.append(Day(year: "2021", month: "September", day1: String(j), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
            for k in 1...31{
                self.days.append(Day(year: "2021", month: "October", day1: String(k), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
            for l in 1...30{
                self.days.append(Day(year: "2021", month: "November", day1: String(l), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
            for m in 1...31{
                self.days.append(Day(year: "2021", month: "December", day1: String(m), dayOfWeek: "", events: [Event(type: "", description: "")]))
            }
           
        }
         return self.days
    }

    @State var days : [Day] = []
    
    @State var day : Day = Day(year: "2021", month: "March", day1: "24", dayOfWeek: "Tuesday", events: [] )
    
    var body: some View {
       
        ZStack{
            
            NavigationView{
                
                ForEach(days.indices, id: \.self){
                    i in DayView(day: self.$days[i], days: Binding.constant(self.createDates()))
                    }
                }.navigationBarTitle("Days")
            }
        
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


