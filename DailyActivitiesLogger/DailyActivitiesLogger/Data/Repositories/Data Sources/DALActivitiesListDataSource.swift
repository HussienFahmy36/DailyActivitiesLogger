//
//  DALActivitiesListDataSource.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 26/08/2023.
//

import Foundation

protocol DALActivitiesListDataSource {
    func query() async throws -> [DALActivityEntity]
    func add(_ entity: DALActivityEntity) async throws
    func delete(_ entity: DALActivityEntity) async throws
}
