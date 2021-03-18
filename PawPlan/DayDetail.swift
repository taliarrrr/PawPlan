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
    @Binding var days : [Day]
    @Environment(\.presentationMode) var presentation
    
    //change to something you want to choose from
    var daysOfWeek : [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    var body: some View {
        VStack{
            
            Text("\(day.month) \(day.day1), \(day.year)")
                .font(.system(size: 30))
                .foregroundColor(.orange)
            Text("\(day.dayOfWeek)")
                .font(.system(size: 20))
            
            
            Form {
                Section() {
                    TextField("Events", text: $day.month)
                        .font(.system(size: 30))
                        .foregroundColor(.orange)
                }
                
                //                Section(){
                //                   Picker(selection: $day.dayOfWeek, label: Text("Type")) {
                //                        ForEach(0..<daysOfWeek.count){ i in
                //                            Text(self.daysOfWeek[i])
                //                        }
                //                    }
                //                }
                
                //            }
                
//                Button(action: {
//                    Text("Choose Event")
//                }) {
//                        Text("Add Day")
//                }
                
            }
        }
    }
}
    struct ContactDetail_Previews: PreviewProvider {
        static var previews: some View {
            DayDetail(day: Binding.constant(Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday")), days: Binding.constant([Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday")]))
        }
}
