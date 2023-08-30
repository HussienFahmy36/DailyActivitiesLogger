//
//  DailyActivitiesApp.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 27/08/2023.
//

import Foundation

struct DailyActivitiesApp {
    
    let useCaseProvider = UseCaseProvider()
    @MainActor func makeActivitiesListView() -> ActivitiesListView {
        ActivitiesListView(viewModel:
                            ActivitiesListViewModel(useCase:
                                                        useCaseProvider.makeActivitiesUseCase()))
    }
}
