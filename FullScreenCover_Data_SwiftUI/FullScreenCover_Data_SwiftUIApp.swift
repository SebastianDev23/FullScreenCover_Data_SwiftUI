

import SwiftUI

@main
struct FullScreenCover_Data_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(list: dataList[0], selectedData: dataList[0])
        }
    }
}
