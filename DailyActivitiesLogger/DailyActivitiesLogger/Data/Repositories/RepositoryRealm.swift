//
//  DataStore.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 27/08/2023.
//

import Foundation

struct RepositoryRealm: Repository {
    func getAll() async throws -> [DailyActivity] {
        [
        DailyActivityRealm(name: "Coding", content: "Coding reminder", type: 0),
        DailyActivityRealm(name: "Watching movie", content: "Watching 7awa2 12", type: 1)
        ]
            .map {
                DailyActivity(name: $0.name, content: $0.content, type: DailyActivityType(rawValue: $0.type) ?? .coding)
            }
    }
    
    func update(_ activty: DailyActivity) async throws {
        
    }
    func delete(_ activtiy: DailyActivity) async throws {
        
    }
    
    func save(_ activity: DailyActivity) async throws {
    }
}
