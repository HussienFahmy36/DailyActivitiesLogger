//
//  DALActivitiesListDBDataSource.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 26/08/2023.
//

import Foundation

struct DALActivitiesListRealmDataSource: DALActivitiesListDataSource {
    func query() async throws -> [DALActivityEntity] {
        [
            DALActivityRealmEntity(name: "Coding",
                                   content: "Coding DAL app",
                                   timeStamp: Date().timeIntervalSince1970,
                                   type: 0),
            
            DALActivityRealmEntity(name: "Youtube",
                                   content: "Watching Elden ring gameplay",
                                   timeStamp: Date().timeIntervalSince1970,
                                   type: 1)

        ]
    }
    
    func add(_ entity: DALActivityEntity) async throws {
    }
    
    func delete(_ entity: DALActivityEntity) async throws {
    }
}
