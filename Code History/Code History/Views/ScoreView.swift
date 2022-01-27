//
//  ScoreView.swift
//  Code History
//
//  Created by Mason Hendry on 7/15/21.
//

import SwiftUI

struct ScoreView: View {
    let viewModel : ScoreViewModel
    
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                VStack{
                    Text("\(viewModel.correctGuesses)✅")
                    Text("\(viewModel.incorrectGuesses)❌")
                }.font(.system(size: 30))
                Spacer()
                NavigationLink(
                        destination:
                            GameView(),
                        label: {
                            BottomTextView(str: "Re-take Quiz")
                        })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel :
                    ScoreViewModel(
                        correctGuesses: 8,
                        incorrectGuesses: 2
                    )
        )
    }
}
