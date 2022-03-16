
import Foundation



struct MyData: Identifiable  {
    var id = UUID()
    var title: String
    var titleSecondScreen: String
}

let dataList = [
    MyData(title: "Test1", titleSecondScreen: "Second1"),
    MyData(title: "Test2", titleSecondScreen: "Second2"),
    MyData(title: "Test3", titleSecondScreen: "Second3"),
    MyData(title: "Test4", titleSecondScreen: "Second4"),
    MyData(title: "Test5", titleSecondScreen: "Second5"),
]
