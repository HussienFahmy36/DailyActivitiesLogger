//
//  AddActivityView.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 27/08/2023.
//

import SwiftUI

struct AddActivityView: View {
    @ObservedObject var viewModel: AddActivityViewModel
    @Environment (\.dismiss) private var dismiss

      var body: some View {
           
         VStack(spacing: 20) {
             TextField("Activity title", text: $viewModel.title)
             TextField("Activity content", text: $viewModel.content)
             Button("Save") {
                 viewModel.submit()
                 dismiss()
             }
         }
         .padding()
         .frame(maxWidth: .infinity)
      }
}

struct AddActivityView_Previews: PreviewProvider {
    static var previews: some View {
        AddActivityView(viewModel: AddActivityViewModel(useCase: ActivitesUseCase(repo: RepositoryCoreData())))
    }
}
