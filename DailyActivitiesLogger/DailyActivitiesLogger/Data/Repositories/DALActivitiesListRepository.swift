//
//  DALActivitiesListRepository.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 26/08/2023.
//

import Foundation

struct DALActivitiesListRepository: DALActivitiesListRepositoryProtocol {
    var dataSource: DALActivitiesListDataSource
    func query() async throws -> [DALActivityEntity] {
        try await dataSource.query()
    }
    
    func add(_ entity: DALActivityEntity) async throws {
    }
    
    func delete(_ entity: DALActivityEntity) async throws {
    }
    
}
