//
//  UseCaseProvider.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 27/08/2023.
//

import Foundation

struct UseCaseProvider {
    func makeActivitiesUseCase() -> ActivitesUseCase {
        ActivitesUseCase(repo: RepositoryCoreData())
    }
}
