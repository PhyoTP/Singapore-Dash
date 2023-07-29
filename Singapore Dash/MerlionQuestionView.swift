import SwiftUI

//copypasted QuestionView for merlion - hongyu
//how yall think you gonna make subway surfers

struct MerlionQuestionView: View {
    @EnvironmentObject var Inventory: CurrentInventory
    var questions = [
        question(ask: "The Merlion was relocated in 1977",
                 option1: "True",
                 option2: "False",
                 option3: "",
                 option4: "",
                 answer: 2),
        question(ask: "The Merlion is trademarked",
                 option1: "True",
                 option2: "False",
                 option3: "",
                 option4: "",
                 answer: 1),
        question(ask: "The fish half of the Merlion represents Singapore's history as a trading port",
                 option1: "False",
                 option2: "True",
                 option3: "",
                 option4: "",
                 answer: 1)
    ]
    @State private var homeButton = false
    @State private var correctQuestions = 0
    @State private var isImageVisible = true // Add a @State variable to track visibility
    @State private var wawalord = 0 // tracks number of questions
    @State private var showSheet = false
    var num = [1]
    func button(_ text: String, colour: Color, num: Int) -> some View {
        Button {
            if wawalord == 2{
                if num == questions[wawalord].answer{
                    correctQuestions += 1
                }
                showSheet = true
                homeButton = true
                if correctQuestions > 1 {
                    Inventory.inv.insert("something", at: 0)
                }
            }else{
                wawalord += 1
                if num == questions[wawalord-1].answer{
                    correctQuestions += 1
                    
                }
            }
            
        } label: {
            Text("\(text)")
                .font(.largeTitle)
                .padding(40)
                .foregroundColor(.white)
                .background(colour)
        }
    }
    var body: some View {
        VStack {
            if isImageVisible {
                Text("Chapter 2: Merlion Park")
                Image("merlion")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .padding()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            isImageVisible = false // Set isImageVisible to false after 3 seconds
                        }
                    }
            }
            if isImageVisible == false {
                Text("\(correctQuestions)")
                Text("\(questions[wawalord].ask)")
                HStack{
                    button(questions[wawalord].option1, colour: .red, num: 1)
                        .scaledToFit()
                        .padding()
                    button(questions[wawalord].option2, colour: .blue, num: 2)
                        .scaledToFit()
                        .padding()
    
                }
                .sheet(isPresented: $showSheet){
                    Text("You got \(correctQuestions) out of 3!!!")
                    if correctQuestions > 1{
                        Text("You survived.")
                    }else{
                        Image("ingo musk")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(30)
                            .padding()
                        Text("You died.")
                        Text("\(num[1])")
                    }
                    
                }
                if homeButton{
                    NavigationLink(destination:OhioView()) {
                        Text("Back to home")
                            .foregroundColor(.white)
                            .padding()
                            .background(.red)
                            .cornerRadius(10)
                    }
                }
                    
                
            }
        }
    }
}

struct MerlionQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        MerlionQuestionView()
            .environmentObject(CurrentInventory())
    }
}

