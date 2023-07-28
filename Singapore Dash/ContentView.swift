//
//  ContentView.swift
//  Singapore Dash
//
//  Created by T Krobot on 22/7/23.
//

import SwiftUI

struct ContentView: View {

    @StateObject var globalData = GlobalData()
    
    var body: some View {

        NavigationStack {
            ZStack{
                QuestionView()
                    .environmentObject(globalData)
                OhioView()
                    .environmentObject(globalData)
                tempview()
                    .environmentObject(globalData)
                VStack{
                    Color.red
                    Color.white
                }
                .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Singapore Dash")
                        .font(.largeTitle)
                    Spacer()
                    NavigationLink(destination:IntroView()) {
                        Text("•  Start  •")
                            .foregroundColor(.white)
                            .padding()
                            .background(.red)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CurrentInventory())
    }
}
