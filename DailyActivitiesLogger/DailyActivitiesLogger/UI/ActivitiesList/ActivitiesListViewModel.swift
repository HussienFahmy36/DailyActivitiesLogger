//
//  ActivitiesListViewModel.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 27/08/2023.
//

import SwiftUI

class ActivitiesListViewModel: ObservableObject {
    @Published var activities: [DailyActivity] = []
    @Published var showAddActivity = false
    
    var useCase: ActivitesUseCase

    init(useCase: ActivitesUseCase) {
        self.useCase = useCase
        loadActivities()
    }
    
    func onDelete(index: Int) {
        Task {
            await MainActor.run {
                Task {
                    do {
                        try await useCase.delete(activities[index])
                    } catch {
                    }
                }
            }
        }
    }

    func loadActivities() {
        Task {
            activities = try await useCase.read()
        }
        
    }
    
    func add() {
        showAddActivity.toggle()
    }
}
