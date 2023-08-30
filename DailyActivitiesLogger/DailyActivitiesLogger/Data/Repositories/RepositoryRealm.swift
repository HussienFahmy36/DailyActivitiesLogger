//
//  DataStore.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 27/08/2023.
//

import Foundation

class RepositoryRealm: Repository {
    var data: [DailyActivityRealm] = []
    func getAll() async throws -> [DailyActivity] {
        data
            .map {
                DailyActivity(name: $0.name, content: $0.content, type: DailyActivityType(rawValue: $0.type) ?? .coding)
            }
    }
    
    func update(_ activty: DailyActivity) async throws {
        
    }
    func delete(_ activtiy: DailyActivity) async throws {
        
    }
    
    func save(_ activity: DailyActivity) async throws {
        data.append(DailyActivityRealm(name: activity.name, content: activity.content ?? "", type: activity.type.rawValue))
    }
}
