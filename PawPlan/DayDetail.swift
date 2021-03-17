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
    
    var isAtContact : Bool = true
    var types : [String] = ["Friend", "Co-worker", "Business"]
    
    
    var body: some View {
        VStack{
            Image(contact.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            
            Form {
                Section() {
                    TextField("Username", text: $contact.name)
                        .font(.system(size: 30))
                        .foregroundColor(.orange)
                    TextField("Email Address", text: $contact.email)
                        .font(.system(size: 20))
                    
                }
                
                Section(){
                    Toggle(isOn: $contact.isFavorite) {Text("Favorite")}
                    Picker(selection: $contact.type, label: Text("Type")) {
                        ForEach(0..<types.count){ i in
                            Text(self.types[i])
                        }
                    }
                }
                
            }
            
            Button(action: {
                if self.isAtContact {
                    self.contacts.append(self.contact)
                }
                self.contacts.sort(by: {$0.name < $1.name})
                self.presentation.wrappedValue.dismiss()
                
            }) {
                if self.isAtContact{
                    Text("Add Contact")
                }
                else{
                    Text("Edit Contact")
                }
            }
            
        }
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: Binding.constant(Contact(image: "ben", name: "Ben", email: "ben@ben.ben")), contacts: Binding.constant([Contact(image: "ben", name: "Ben", email: "ben@ben.ben")]))
    }
}
