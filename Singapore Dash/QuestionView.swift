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
                ask: "What type of garden is the National Orchid Garden?",
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
    func button(_ num: Int, colour: Color) -> some View {
        Button {
            print("You tapped button \(num)!")
        } label: {
            Text("Button \(num)")
                .padding()
                .foregroundColor(.white)
                .background(colour)
        }
    }
    var body: some View {
        VStack {
            if isImageVisible {
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
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
