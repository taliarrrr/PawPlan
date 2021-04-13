//
//  ContentView.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 3/11/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI
import Foundation




struct ContentView: View {
    
    
//     func createDates() -> [Day] {
//       var days = [Day]()
//       /* for a in 1...31{
//            print(Day(year: "2021", month: "January", day1: "\(a)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        for b in 1...30{
//               print(Day(year: "2021", month: "January", day1: "\(b)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//            }
//            for c in 1...31{
//           print(Day(year: "2021", month: "January", day1: "\(c)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//            }
//            for d in 1...30{
//                print(Day(year: "2021", month: "January", day1: "\(d)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))            }
//            for e in 1...31{
//              print(Day(year: "2021", month: "January", day1: "\(e)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//            }
//            for f in 1...30{
//                print(Day(year: "2021", month: "January", day1: "\(f)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//            }
//            for g in 1...31{
//               print(Day(year: "2021", month: "January", day1: "\(g)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//            }
//            for h in 1...30{
//                print(Day(year: "2021", month: "January", day1: "\(h)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//            }
//            for j in 1...30{
//                print(Day(year: "2021", month: "January", day1: "\(j)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//            }
//            for k in 1...31{
//                print(Day(year: "2021", month: "January", day1: "\(k)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//            }
//            for l in 1...30{
//                print(Day(year: "2021", month: "January", day1: "\(l)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//            }
//            for m in 1...31{
//                print(Day(year: "2021", month: "January", day1: "\(m)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//            }
//           //days.append(Day(year: "2021", month: "January", day1: "\(a)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        }*/
//        for b in 1...30{
//            days.append(Day(year: "2021", month: "February", day1: "\(b)", dayOfWeek: "", events: []))
//        }
//        /*for c in 1...31{
//            self.days.append(Day(year: "2021", month: "March", day1: "\(c)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        }
//        for d in 1...30{
//            self.days.append(Day(year: "2021", month: "April", day1: "\(d)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        }
//        for e in 1...31{
//            self.days.append(Day(year: "2021", month: "May", day1: "\(e)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        }
//        for f in 1...30{
//            self.days.append(Day(year: "2021", month: "June", day1: "\(f)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        }
//        for g in 1...31{
//            self.days.append(Day(year: "2021", month: "July", day1: "\(g)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        }
//        for h in 1...30{
//            self.days.append(Day(year: "2021", month: "August", day1: "\(h)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        }
//        for j in 1...30{
//            self.days.append(Day(year: "2021", month: "September", day1: "\(j)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        }
//        for k in 1...31{
//            self.days.append(Day(year: "2021", month: "October", day1: "\(k)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        }
//        for l in 1...30{
//            self.days.append(Day(year: "2021", month: "November", day1: "\(l)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        }
//        for m in 1...31{
//            self.days.append(Day(year: "2021", month: "December", day1: "\(m)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
//        }*/
//       return days
//    }

    
    @State var days : [Day]
    
    @State var day : Day = Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Tuesday", events: [] )
    
    @State var events : [Event] = [Event(title: "", type: "", description: "")]
    
    @State var event : Event = Event(title: "", type: "", description: "")
    
   
    var body: some View {
        VStack{
            NavigationView{
                ForEach(days.indices, id: \.self){
                    i in
                    Text(self.days[i].day1)
                    //DayView(day: self.$days[i], days: self.$days, event: self.$events[i], events: self.$events)
                }
            }.navigationBarTitle("Days")
        }.onAppear{print(self.days.count)}
        
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(days: [Day]())
    }
}


