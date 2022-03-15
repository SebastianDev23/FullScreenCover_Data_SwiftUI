

import SwiftUI




struct Data: Identifiable  {
    
    var id = UUID()
    var title: String
    var titleSecondScreen: String
}


let dataList = [
    Data(title: "Test1", titleSecondScreen: "Second1"),
    Data(title: "Test2", titleSecondScreen: "Second2"),
    Data(title: "Test3", titleSecondScreen: "Second3"),
    Data(title: "Test4", titleSecondScreen: "Second4"),
    Data(title: "Test5", titleSecondScreen: "Second5"),
]



struct ContentView: View {
    
   
    
    
    let list: Data
    
    @State private  var fullScreen = false
    @State  var selectedData: Data
    
    
    var body: some View {
        
        ForEach(dataList) { value in
            
            Button {
                fullScreen.toggle()
                selectedData = value
            } label: {
                
                Text(value.title)
                    .padding()
                
            }
        }
        .fullScreenCover(isPresented: $fullScreen) {
            fullScreenView(list: dataList[0])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(list: dataList[0], selectedData: dataList[0])
    }
}


struct fullScreenView: View {
    
    let list: Data
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        
        VStack {
            Text(list.titleSecondScreen)
                .padding()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
               Text("Closed FullScreen")
            }
        }
    }
}

struct fullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        fullScreenView(list: dataList[0])
    }
}
