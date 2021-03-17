//
//  DayDetail.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct DayDetail: View {

//add a contact bindng and update the preview struct
    @Binding var day : Day
    @Binding var days : [Day]
    @Binding var index: Int
    
    var body: some View {
        
        VStack{
            
            Form(){
                TextField("name", text: $contact.name)
                TextField("email adress", text: $contact.email)
            }
        }
        Button(action: {
            
        }, label: "Update Day")
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: Binding.constant(Contact(image: "ben", name: "Ben", email: "ben@ben.ben")), contacts: Binding.constant([Contact(image: "ben", name: "Ben", email: "ben@ben.ben")]), index: <#Binding<Int>#>)
    }
}
