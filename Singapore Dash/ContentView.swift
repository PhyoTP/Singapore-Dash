//
//  ContentView.swift
//  Singapore Dash
//
//  Created by T Krobot on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                Color.red
                Color.white
            }
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Singapore Rush")
                    .font(.largeTitle)
                Spacer()
                Button{
                    
                }label: {
                    Text("•  Start  •")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .background(.red)
                        .cornerRadius(50)
                }
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
