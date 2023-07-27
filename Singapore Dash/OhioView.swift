//
//  OhioView.swift
//  Singapore Dash
//
//  Created by yoeh iskandar on 22/7/23.
//

import SwiftUI

struct OhioView: View {
    @EnvironmentObject var Inventory: CurrentInventory
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
                        Group{
                            Spacer()
                            Image(systemName: "circle")
                            Spacer()
                            Image(systemName: "circle")
                            Spacer()
                            Image(systemName: "circle")
                            Spacer()
                        }
                        Group{
                            Image(systemName: "circle")
                            Spacer()
                            Image(systemName: "circle")
                            Spacer()
                            Image(systemName: "circle")
                            Spacer()
                            Image(systemName: "circle")
                            Spacer()
                        }
                    }
                    Text("[insert variable here]/7 complete")
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
            }
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

struct OhioView_Previews: PreviewProvider {
    static var previews: some View {
        OhioView()
            .environmentObject(CurrentInventory())
    }
}
