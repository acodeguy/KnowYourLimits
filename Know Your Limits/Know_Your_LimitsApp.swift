import SwiftUI

@main
struct KnowYourLimitsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            DrinksListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
