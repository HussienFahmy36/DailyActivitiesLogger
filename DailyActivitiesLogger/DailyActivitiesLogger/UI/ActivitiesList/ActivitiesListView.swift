//
//  ActivitiesListView.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 26/08/2023.
//

import SwiftUI
import CoreData

struct ActivitiesListView: View {
    @ObservedObject var viewModel: ActivitiesListViewModel
    var body: some View {
        VStack {
            List(viewModel.activitiesList) {
                Text("\($0.name)")
            }
        }
        .ignoresSafeArea()
        .padding(.vertical, 4)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let repo = DALActivitiesListRepository(dataSource: DALActivitiesListRealmDataSource())
        let useCase = ActivityListUseCase(repo: repo)
        return ActivitiesListView(viewModel:
                            ActivitiesListViewModel(useCase: useCase)
        )
    }
}
