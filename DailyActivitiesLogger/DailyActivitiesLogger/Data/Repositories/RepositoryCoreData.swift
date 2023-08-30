//
//  RepositoryCoreData.swift
//  DailyActivitiesLogger
//
//  Created by Hussien Gamal Mohammed on 30/08/2023.
//

import Foundation
import CoreData

class RepositoryCoreData: Repository {
    
    lazy var persistanceContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Model")
        container.loadPersistentStores { description, error in
            if let error {
                fatalError("unable to load persistance store: \(error)")
            }
        }
        return container
    }()

    func getAll() async throws -> [DailyActivity] {
        let context = persistanceContainer.viewContext
        let items = try context.fetch(DailyActivityCoreData.fetchRequest())
        return items.map {
            DailyActivity(name: $0.title ?? "", type: DailyActivityType(rawValue: Int($0.type))!)
        }
    }
    
    func update(_ activty: DailyActivity) async throws {
        
    }
    func delete(_ activtiy: DailyActivity) async throws {
        let context = persistanceContainer.viewContext
        let request = NSFetchRequest<DailyActivityCoreData>(entityName: "DailyActivityCoreData")
        request.predicate = NSPredicate(format: "title = %@ ", activtiy.name)
        if let fetchedEntity = try context.fetch(request).first {
            context.delete(fetchedEntity)
            try context.save()
        }
    }
    
    func save(_ activity: DailyActivity) async throws {
        let context = persistanceContainer.viewContext       
        let dailyActivity = DailyActivityCoreData(context: context)
        dailyActivity.title = activity.name
        dailyActivity.type = Int16(activity.type.rawValue)
        try context.save()
            
    }
}
