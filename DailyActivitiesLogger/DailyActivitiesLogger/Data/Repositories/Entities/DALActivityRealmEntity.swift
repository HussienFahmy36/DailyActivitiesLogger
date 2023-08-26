//
//  DALActivityRealmEntity.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 26/08/2023.
//

import Foundation

struct DALActivityRealmEntity: DALActivityEntity {
    var name: String
    
    var content: String
    
    var timeStamp: TimeInterval
    
    var type: Int
}
