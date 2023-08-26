//
//  ActivityItemDisplayable.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 26/08/2023.
//

import Foundation

struct ActivityItemDisplayable: DALActivityEntity, Identifiable {
    var id: UUID = UUID()
    
    var name: String
    
    var content: String
    
    var timeStamp: TimeInterval
    
    var type: Int
    
    
    
}
