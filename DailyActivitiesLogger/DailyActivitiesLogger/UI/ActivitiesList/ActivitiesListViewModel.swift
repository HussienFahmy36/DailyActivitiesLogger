//
//  ActivitiesListViewModel.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 27/08/2023.
//

import SwiftUI

class ActivitiesListViewModel: ObservableObject {
    @Published var activities: [DailyActivity] = []
    private var useCase: ActivitesUseCase
    
    init(useCase: ActivitesUseCase) {
        self.useCase = useCase
        
        Task {
            activities = try await useCase.read()
        }
        
    }
}
