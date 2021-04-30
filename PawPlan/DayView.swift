//
//  DayView.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct DayView: View {

    @Binding var day : Day
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack{
            
             Image("background").frame(width: 390, height: 55, alignment: .bottomLeading).cornerRadius(10).scaledToFill()
            HStack{
                NavigationLink(destination: DayDetail(day: $day)){
                    VStack{
                        HStack (alignment: .center){
                        
                            Text("          \(day.month)" + " ").font(Font.custom("teen", size: 25))
                                .foregroundColor(Color("darkPurple"))
                                .lineLimit(2)
                               
                            
                            Text(" \(day.day1)").font(Font.custom("teen", size: 25)) .foregroundColor(.black)
                                .lineLimit(1)
                        }
                    }
                }.background(Color.white.opacity(0.9))
                    .padding(.horizontal, 30).frame(width: 330, height: 40, alignment: .center)
            }
        }
    }
}


struct Day_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: Binding.constant(Day(year: "", month: Months.January, day1: "", dayOfWeek: "", events: [Event](), event: Event(title: "", type: types.pick, description: ""))))
    }

}
