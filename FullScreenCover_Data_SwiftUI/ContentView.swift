import SwiftUI

struct ContentView: View {
    
    let myData: MyData
    let soundItem: Sound
    
    @State private var selectedData: MyData?
    @State private var selectedSound: Sound?
    
    var body: some View {
        
        ForEach(dataList) { value in
            
            Button {
                selectedData = value
                //selectedSound = value
            } label: {
                Text(value.title)
                    .padding()
            }
        }
        .fullScreenCover(item: $selectedData) { item in
            FullScreenView(item: item, soundItem: soundItem)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(myData: dataList[0], soundItem: dataList[0].sound[0])
    }
}


struct FullScreenView: View {
    
    let item: MyData
    let soundItem: Sound
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text(item.titleSecondScreen)
                .padding()
            Text(item.sound[0].soundTitle)
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
               Text("Close FullScreen")
            }
        }
    }
}
