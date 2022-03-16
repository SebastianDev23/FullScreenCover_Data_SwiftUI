import SwiftUI




struct ContentView: View {
    
    let myData: MyData
    
    @State private var selectedData: MyData?
    
    var body: some View {
        
        ForEach(dataList) { value in
            
            Button {
                selectedData = value
            } label: {
                Text(value.title)
                    .padding()
            }
        }
        .fullScreenCover(item: $selectedData) { item in
            FullScreenView(item: item)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(myData: dataList[0])
    }
}


struct FullScreenView: View {
    
    let item: MyData
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text(item.titleSecondScreen)
                .padding()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
               Text("Close FullScreen")
            }
        }
    }
}
