

import SwiftUI

@main
struct FullScreenCover_Data_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(myData: dataList[0], soundItem: dataList[0].sound[0])
        }
    }
}
