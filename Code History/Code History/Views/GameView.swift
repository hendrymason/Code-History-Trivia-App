//
//  ContentView.swift
//  Code History
//
//  Created by Mason Hendry on 6/17/21.
//

import SwiftUI

struct GameView: View {
    
    var question = Question(
        questionText: "what was the first computer bug",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuesiton)
            }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
        .background(
            NavigationLink(destination:
                            ScoreView(viewModel: ScoreViewModel(
                                        correctGuesses: viewModel.correctGuesses,
                                        incorrectGuesses: viewModel.incorrectGuesses)
                            ),
                           isActive: .constant(viewModel.gameIsOver),
                           label: {EmptyView()})
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
