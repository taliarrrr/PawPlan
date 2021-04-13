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
    var types : [String] = ["Dog", "Cat"]
    
    var body: some View {
        Form {
            Section() {
                TextField("Name", text: $pet.name)
                    .font(.system(size: 30))
                    .foregroundColor(.orange)
                TextField("Type", text: $pet.type)
                    .font(.system(size: 20))
                Section(){
                    Picker(selection: $pet.dogOrCat, label: Text("Choose if dogOrCat")) {
                        ForEach(0..<types.count){ i in
                            Text(self.types[i])
                        }
                    }
                    //variable that they chose
                
                }
               // Text($pet.dogOrCat)
            }
        }
    }
}

struct PetView_Previews: PreviewProvider {
    static var previews: some View {
        PetView(pet: Binding.constant(Pet(name: "", dogOrCat: "", type: "")))
    }
}
