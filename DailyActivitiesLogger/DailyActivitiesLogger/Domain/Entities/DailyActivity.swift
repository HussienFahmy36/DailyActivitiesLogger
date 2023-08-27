//
//  ActivityEntity.swift
//  
//
//  Created by Hussien Gamal Mohammed on 27/08/2023.
//

import Foundation

enum DailyActivityType: Int {
    case coding,
         studying,
         eating,
         sleeping,
         excercising
}

struct DailyActivity: Identifiable {
    var id: UUID = UUID()    
    var name: String
    var content: String
    var type: DailyActivityType
}
