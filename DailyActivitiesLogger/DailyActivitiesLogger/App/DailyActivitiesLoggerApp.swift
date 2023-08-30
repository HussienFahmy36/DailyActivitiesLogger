//
//  DailyActivitiesLoggerApp.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 26/08/2023.
//

import SwiftUI

@main
struct DailyActivitiesLoggerApp: App {
    var body: some Scene {
        WindowGroup {
            DailyActivitiesApp().makeActivitiesListView()
        }
    }
}
