//
//  OhioView.swift
//  Singapore Dash
//
//  Created by yoeh iskandar on 22/7/23.
//

import SwiftUI

struct OhioView: View {
    @State private var name = ""
    @State private var showSheet = true
    var body: some View {
        VStack{
            Text("Home")
                .font(.largeTitle)
                .bold()
            Form{
                HStack{
                    Text("Name: \(name)")
                    
                }
                
            }
        }
        .sheet(isPresented: $showSheet){
            Form{
                HStack{
                    Text("Name:")
                    TextField("YJ Saumil", text: $name)
                }
            }
        }
    }
}

struct OhioView_Previews: PreviewProvider {
    static var previews: some View {
        OhioView()
    }
}
