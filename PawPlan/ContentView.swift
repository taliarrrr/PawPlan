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
    

    @State var days : [Day] = (MonthList.jan + MonthList.feb + MonthList.march + MonthList.april + MonthList.may + MonthList.june + MonthList.july + MonthList.august + MonthList.sept + MonthList.oct + MonthList.nov + MonthList.dec)

    
    @State var event : Event = Event(title: "", type: types.pick, description: "")
    
    @State var pet : Pet = Pet(name: "", dogOrCat: "", type: typesOfPets.dog)
    
    
    let months = [
        Month(monthName: "January", month: Months.January, daysInMonth: MonthList.jan),
        Month(monthName: "February", month:Months.February, daysInMonth: MonthList.feb),
        Month(monthName: "March", month:Months.March, daysInMonth: MonthList.march),
        Month(monthName: "April", month:Months.April, daysInMonth: MonthList.april),
        Month(monthName: "May", month: Months.May, daysInMonth: MonthList.may),
        Month(monthName: "June", month: Months.June, daysInMonth: MonthList.june),
        Month(monthName: "July", month: Months.July, daysInMonth: MonthList.july),
        Month(monthName: "August", month: Months.August, daysInMonth: MonthList.august),
        Month(monthName: "September", month: Months.September, daysInMonth: MonthList.sept),
        Month(monthName: "October", month:Months.October, daysInMonth: MonthList.oct),
        Month(monthName: "November", month: Months.November , daysInMonth: MonthList.nov),
        Month(monthName: "December", month:Months.December, daysInMonth: MonthList.dec)]
    
   
    var body: some View {
        VStack{
           title()
            NavigationView{
                List{
                   ForEach(months.indices, id: \.self){
                        i in
                    MonthView(days: self.$days, m: self.months[i], event: self.$event)
                    }
                
                }.navigationBarItems(trailing: InfoButtonView(pet: $pet))
        }
    }
        }
        
    }






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


