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
    //@Binding var days : [Day]
    @Environment(\.presentationMode) var presentation
    
    //change to something you want to choose from
    var daysOfWeek : [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    
    var body: some View {
        VStack{
            Form {
                Section() {
                    TextField("Month", text: $day.month)
                        .font(.system(size: 30))
                        .foregroundColor(.orange)
                    TextField("Year", text: $day.year)
                        .font(.system(size: 20))
                    TextField("Day", text: $day.day1)
                    .font(.system(size: 20))
                    TextField("Day of Week", text: $day.dayOfWeek)
                    .font(.system(size: 20))
                }
                
//                Section(){
////                    Toggle(isOn: $day.isFavorite) {Text("Favorite")}
//                   Picker(selection: $day.dayOfWeek, label: Text("Type")) {
//                        ForEach(0..<daysOfWeek.count){ i in
//                            Text(self.daysOfWeek[i])
//                        }
//                    }
//                }
//
//            }
            
//            Button(action: {
//                if self.isAtDay {
//                    self.days.append(self.day)
//                }
//                self.days.sort(by: {$0.name < $1.name})
//                self.presentation.wrappedValue.dismiss()
//
//            }) {
//                if self.isAtDay{
//                    Text("Add Day")
//                }
//                else{
//                    Text("Edit Day")
//                }
           }

        }
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        DayDetail(day: Binding.constant(Day(year: "2021", month: "March", day1: "1", dayOfWeek: "Monday")))
    }
    }
