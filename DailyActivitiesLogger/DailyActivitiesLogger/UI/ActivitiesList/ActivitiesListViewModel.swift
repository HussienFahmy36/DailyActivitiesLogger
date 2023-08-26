//
//  ActivitiesListViewModel.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 26/08/2023.
//

import SwiftUI

@MainActor
class ActivitiesListViewModel: ObservableObject {
    private var useCase: ActivityListUseCase
    
    @Published var activitiesList: [ActivityItemDisplayable] = []
    
    init(useCase: ActivityListUseCase) {
        self.useCase = useCase
        
        Task {
            do {
                let result = try await useCase.query().map {
                    ActivityItemDisplayable(name: $0.name, content: $0.content, timeStamp: $0.timeStamp, type: $0.type)
                }
                activitiesList = result
            }
            catch {
                
            }
        }
    }
}

