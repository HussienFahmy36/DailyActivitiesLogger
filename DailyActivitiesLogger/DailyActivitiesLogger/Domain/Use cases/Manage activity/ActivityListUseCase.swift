//
//  ActivityListUseCase.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 26/08/2023.
//

import Foundation

struct ActivityListUseCase: DALUseCase {
 
    private var repo: DALActivitiesListRepositoryProtocol
    
    func add(_ entity: DALActivityEntity) async throws {
        try await repo.add(entity)
    }
    
    init(repo: DALActivitiesListRepositoryProtocol) {
        self.repo = repo
    }
    
    func query() async throws -> [DALActivityEntity] {
        return try await repo.query()
    }
}
