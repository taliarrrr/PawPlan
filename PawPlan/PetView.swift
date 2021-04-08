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
    
    var body: some View {
        Text("Welcome to PawPlan!")

    }
}

struct PetView_Previews: PreviewProvider {
    static var previews: some View {
        PetView(pet: Binding.constant(Pet(name: "", dogOrCat: "", type: "")))
    }
}
