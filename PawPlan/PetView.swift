//
//  PetView.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 4/8/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct PetView: View {
    
    @Binding var pet : Pet
    @Environment(\.presentationMode) var presentation
    
    
    var body: some View {
        Form {
            Section() {
                TextField("Name", text: $pet.name)
                    .font(Font.custom("teen", size: 30))
                    .foregroundColor(.orange)
                TextField("Type", text: $pet.dogOrCat)
                    .font(.system(size: 20))
                
                Section(){
                    Picker("meow or woof", selection: $pet.type ) {
                        Text("").tag(typesOfPets.pick)
                        Text("Dog").tag(typesOfPets.dog)
                        Text("Cat").tag(typesOfPets.cat)
                        }
                    }
                }
            }
        }
    }


struct PetView_Previews: PreviewProvider {
    static var previews: some View {
        PetView(pet: Binding.constant(Pet(name: "", dogOrCat: "", type: typesOfPets.dog)))
    }
}
