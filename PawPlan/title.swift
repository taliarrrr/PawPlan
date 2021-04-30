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
                   Text("My Calendar")
                  .foregroundColor(Color("purple")).bold().font(Font.custom("teen", size: 30))
        }
    }
}

struct title_Previews: PreviewProvider {
    static var previews: some View {
        title()
    }
}
