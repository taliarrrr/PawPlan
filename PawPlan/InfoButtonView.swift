//
//  InfoButtonView.swift
//  PawPlan
//
//  Created by Talia Lehrer (student LM) on 4/8/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct InfoButtonView: View {
    
    @Binding var pet : Pet
    
    var body: some View {
        
        NavigationLink(destination: PetView(pet: $pet)) {
                  Text("Info")
                       .foregroundColor(.black)
                   
               }
           }
}

struct InfoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        InfoButtonView(pet: Binding.constant(Pet(name: "", dogOrCat: "", type: typesOfPets.dog)))
    }
}
