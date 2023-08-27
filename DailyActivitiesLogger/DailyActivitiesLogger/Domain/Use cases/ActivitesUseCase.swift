//
//  OpsOnDailyActivityUseCase.swift
//  
//
//  Created by Hussien Gamal Mohammed on 27/08/2023.
//

import Foundation

public struct ActivitesUseCase {
    private let repo: Repository
    
    init(repo: Repository) {
        self.repo = repo
    }

    func save(_ activity: DailyActivity) async throws {
        try await repo.save(activity)
    }
    
    func read() async throws -> [DailyActivity] {
        try await repo.getAll()
    }
    
    func delete(_ activity: DailyActivity) async throws {
        try await repo.delete(activity)
    }
    
}
