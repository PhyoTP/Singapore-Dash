import SwiftUI

struct QuestionView: View {
    var questions = [
        question(ask: "Which is the oldest botanic garden in Singapore?",
                 option1: "Jurong Bird Park",
                 option2: "Singapore Zoo",
                 option3: "Gardens by the Bay",
                 option4: "Singapore Botanic Gardens",
        answer: 4),
        question(
                ask: "What is the famous landmark inside Singapore Botanic Gardens?",
                option1: "Supertree Grove",
                option2: "Cloud Forest",
                option3: "Swan Lake",
                option4: "National Orchid Garden",
                answer: 4
            ),
        question(
                ask: "What type of garden is the National Orchid Garden? (Come on this is bloody obvious)",
                option1: "Japanese Garden",
                option2: "Rose Garden",
                option3: "Orchid Garden",
                option4: "Cactus Garden",
                answer: 3
            ),
        question(
                ask: "Which botanic garden is known for its collection of tropical rainforest trees?",
                option1: "HortPark",
                option2: "Chinese Garden",
                option3: "Botanic Gardens",
                option4: "Bay East Garden",
                answer: 3
            ),
        question(
                ask: "What is the main entrance of Singapore Botanic Gardens called?",
                option1: "Tanglin Gate",
                option2: "Orchard Gate",
                option3: "Tyersall Gate",
                option4: "Bukit Timah Gate",
                answer: 1)
    ]
    @State private var isImageVisible = true // Add a @State variable to track visibility
    @State private var wawalord = 0 // tracks number of questions
    func button(_ text: String, colour: Color, num: Int) -> some View {
        Button {
            print("You tapped button \(num)!")
        } label: {
            Text("\(text)")
                .padding()
                .foregroundColor(.white)
                .background(colour)
        }
    }
    var body: some View {
        VStack {
            if isImageVisible {
                Text("Chapter 1: Botanic Gardens")
                Image("botanic garden")
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
                Text("\(questions[wawalord].ask)")
                HStack{
                    button(questions[wawalord].option1, colour: .red, num: 1)
                        .scaledToFit()
                        .padding()
                    button(questions[wawalord].option2, colour: .blue, num: 2)
                        .scaledToFit()
                        .padding()
                }
                HStack{
                    button(questions[wawalord].option3, colour: .green, num: 3)
                        .scaledToFit()
                        .padding()
                    button(questions[wawalord].option4, colour: .yellow, num: 4)
                        .scaledToFit()
                        .padding()
                }
                
            }
            
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
