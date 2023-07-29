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
    var sna = true
    var body: some View {
        VStack{
            if sna{
                Text("BADGE LADY BOSS")
                    .font(.system(size: 36))
                Image("BADGE LADY")
                    .scaledToFit()
                //           .resizable()
                if (Inventory.inv[0] == "Badge") {
                    Text("I will let you go, since you appear to have a badge.")
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
}
