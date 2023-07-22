//
//  AdventureView.swift
//  Singapore Dash
//
//  Created by yoeh iskandar on 22/7/23.
//

import SwiftUI

struct AdventureView: View {
    var body: some View {
        //    Text("Intro page")
        VStack{
            Text("Intro to the game")
                .font(.system(size: 36))
            Text("Oh no! Thet Pai and Ingo need to go around Singapore to take photos for their Nursery school project due in one second!")
                .multilineTextAlignment(.center)
            Text("They need your help to go to famous landmarks of Singapore so that they can get a F-")
            
        }
    }
}
struct AdventureView_Previews: PreviewProvider {
    static var previews: some View {
        AdventureView()
    }
}
