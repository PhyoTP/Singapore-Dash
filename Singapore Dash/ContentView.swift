//
//  ContentView.swift
//  Singapore Dash
//
//  Created by T Krobot on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack{
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
