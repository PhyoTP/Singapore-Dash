//
//  OhioView.swift
//  Singapore Dash
//
//  Created by yoeh iskandar on 22/7/23.
//

import SwiftUI
class ChapterTracker: ObservableObject {
    @Published var chapterTracker: Int = 0
}
struct OhioView: View {
    
    @EnvironmentObject var Inventory: CurrentInventory
    @EnvironmentObject var chap: ChapterTracker
    @State private var name = ""
    var body: some View {
        VStack{
            Text("Home")
                .font(.largeTitle)
                .bold()
            Form{
                Section("Name"){
                    HStack{
                        Text("Name:")
                        TextField("YJ Saumil", text: $name)
                    }
                }
                Section("Progress"){
                    HStack{
                        Spacer()
                        Image(systemName: chap.chapterTracker > 0 ?  "checkmark.circle": "circle")
                        Spacer()
                        Image(systemName: chap.chapterTracker > 1 ?  "checkmark.circle": "circle")
                        Spacer()
                        Image(systemName: chap.chapterTracker > 2 ?  "checkmark.circle": "circle")
                        Spacer()
                    }
                    Text("\(chap.chapterTracker)/3 complete")
                }
                Section("Inventory"){
                    if Inventory.inv[0] == ""{
                        Text("Nothing to see here yet...")
                    }else if Inventory.inv[0] == "Badge"{
                        HStack{
                            Image(systemName: "shield")
                            Text("1x Badge")
                        }
                    }
                }
                Text("🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬")
                    
                    
            }
            if chap.chapterTracker > 0{
                NavigationLink(destination:MerlionQuestionView()) {
                    Text("•  Next  •")
                        .foregroundColor(.white)
                        .padding()
                        .background(.red)
                        .cornerRadius(10)
                }
            }else if chap.chapterTracker == 0{
                NavigationLink(destination:QuestionView()) {
                    Text("•  Start  •")
                        .foregroundColor(.white)
                        .padding()
                        .background(.red)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct OhioView_Previews: PreviewProvider {
    static var previews: some View {
        OhioView()
            .environmentObject(CurrentInventory())
            .environmentObject(ChapterTracker())
        
    }
}
