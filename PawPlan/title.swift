//
//  title.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 4/23/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct title: View {
    var body: some View {
        ZStack{
                       //Rectangle().frame(width: 90, height: 40, alignment: .leading).foregroundColor(.purple)
                   Text("My Calendar")
                    .foregroundColor(.blue).bold().font(Font.custom("Meadow", size: 30))
        }
    }
}

struct title_Previews: PreviewProvider {
    static var previews: some View {
        title()
    }
}
