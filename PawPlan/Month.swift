//
//  Month.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 4/14/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import Foundation
class Month: Identifiable{
    
    var id = UUID()
    var month : String
    

    init(month : String){
        self.month = month
      
    }
}
