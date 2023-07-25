import SwiftUI

struct QuestionView: View {
    
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
