//
//  DALActivityEntity.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 26/08/2023.
//

import Foundation

protocol DALActivityEntity {
    var name: String { get set }
    var content: String { get set }
    var timeStamp: TimeInterval { get set }
    var type: Int { get set }
}
