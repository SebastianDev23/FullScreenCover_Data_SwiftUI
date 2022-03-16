
import Foundation



struct MyData: Identifiable  {
    var id = UUID()
    var title: String
    var titleSecondScreen: String
    var sound: [Sound]
}



struct Sound: Identifiable {
    var id = UUID()
    var soundTitle: String
}


let dataList = [
    MyData(title: "Test1", titleSecondScreen: "Second1", sound: [Sound(soundTitle: "Madonna")]),
    MyData(title: "Test2", titleSecondScreen: "Second2", sound: [Sound(soundTitle: "Rihanna")]),
    MyData(title: "Test3", titleSecondScreen: "Second3", sound: [Sound(soundTitle: "Michael Jakson")]),
    MyData(title: "Test4", titleSecondScreen: "Second4", sound: [Sound(soundTitle: "Eminem")]),
    MyData(title: "Test5", titleSecondScreen: "Second5", sound: [Sound(soundTitle: "Robin Schulz")]),
]
