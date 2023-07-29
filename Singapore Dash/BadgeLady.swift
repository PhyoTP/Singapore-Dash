//
//  BadgeLady.swift
//  Singapore Dash
//
//  Created by yoeh iskandar on 29/7/23.
//

import SwiftUI

struct BadgeLady: View {
    @EnvironmentObject var Inventory: CurrentInventory
    var scamquestions = [question(ask: "scammy question 1: swift = ?",
                                  option1: "KWANLORDD",
                                  option2: "JIACHEN",
                                  option3: "S.A.U.M.I.L",
                                  option4: "SHINE YOUR LIGHT",
                                  answer: 4)]
    @State var sna = true
    var body: some View {
        VStack{
            if sna{
                Text("BADGE LADY BOSS")
                    .font(.system(size: 36))
                Image("BADGE LADY")
                    .scaledToFit()
                //           .resizable()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            sna = false
                        }
                }
                if sna == false {
                    if (Inventory.inv[0] == "Badge") {
                        Text("I will let you go, since you appear to have a badge.")
                        Text("Here, take this nutella with you.")
                    }else{
                        Text("You don't have the badge? Then you have to answer this for the nutella.")
                    }
                    
            }
            }
        }
    }
}
            struct BadgeLady_Previews: PreviewProvider {
                static var previews: some View {
                    BadgeLady()
                        .environmentObject(CurrentInventory())
                }
            }
        
    
