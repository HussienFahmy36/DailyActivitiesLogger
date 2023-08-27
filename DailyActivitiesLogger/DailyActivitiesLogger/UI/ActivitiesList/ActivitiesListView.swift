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
        List(viewModel.activities) {
            Text($0.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesListView(viewModel: ActivitiesListViewModel(useCase: ActivitesUseCase(repo: RepositoryRealm())))
    }
}
