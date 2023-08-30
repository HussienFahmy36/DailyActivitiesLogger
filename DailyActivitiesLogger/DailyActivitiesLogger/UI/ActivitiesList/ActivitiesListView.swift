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
        NavigationView {
               Form {
                   Section(header: Text("Today")) {
                       List {
                           ForEach(viewModel.activities) { Text($0.name) }
                               .onDelete { indexSet in
                                   viewModel.onDelete(index: indexSet.first ?? 0)
                               }
                       }

                   }
               }
               .sheet(isPresented: $viewModel.showAddActivity) {
                   AddActivityView(viewModel: AddActivityViewModel(useCase: viewModel.useCase){
                       viewModel.loadActivities()
                   })
               }
               .toolbar {
                   ToolbarItem(placement: .navigationBarTrailing) {
                       Button("+") {
                           viewModel.add()
                       }
                   }
               }
           }

        .navigationTitle("Test")

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesListView(viewModel: ActivitiesListViewModel(useCase: ActivitesUseCase(repo: RepositoryRealm())))
    }
}
