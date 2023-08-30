//
//  AddActivityViewModel.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 27/08/2023.
//

import SwiftUI

enum DailyActivityTypeRepresntation: String, Identifiable, CaseIterable {
    var id: String  {
        self.rawValue
    }
    
    case coding = "Coding"
    case eating = "Eating"
    case excercising = "Excercising"
    case sleeping = "Sleeping"
    case studying = "Studying"
    
    mutating func map(type: DailyActivityType) {
        switch type {
        case .coding:
            self = .coding
        case .eating:
            self = .eating
        case .excercising:
            self = .excercising
        case .sleeping:
            self = .sleeping
        case .studying:
            self = .studying
        }
    }
}

class AddActivityViewModel: ObservableObject {
    
    @Published var title: String = ""
    @Published var content: String = ""
    @Published var type: DailyActivityTypeRepresntation = .coding
    let onCompletion: (() -> ())?
    let useCase: ActivitesUseCase
    
    init(useCase: ActivitesUseCase, onCompletion: ( () -> ())? = nil) {
        self.useCase = useCase
        self.onCompletion = onCompletion
    }
    
    func submit() {
        Task {
            do {
                let activity = DailyActivity(name: title, content: content, type: DailyActivityType(rawValue: type.hashValue) ?? DailyActivityType.coding)
                try await useCase.save(activity)
                self.onCompletion?()
            } catch {
                
            }
        }
    }
}
