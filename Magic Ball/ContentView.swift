//
//  ContentView.swift
//  Magic Ball
//
//  Created by Аня Беликова on 23.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var langIsShowing = false
    @State private var buttonIsTapped = false
    @State private var answer = ""
    @State private var timer: Timer?

    var body: some View {
        
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.clear, .green]),
                startPoint: UnitPoint(x: 0, y: 1),
                endPoint: UnitPoint(x: 1, y: 0))
            .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: langSwitch) {
                        Image(systemName: "network")
                            .font(.title3)
                        Text(langIsShowing ? "English" : "Русский" )
                            .font(.title3)
                        Spacer()
                    }
                    .padding()
                    Spacer()
                }
                BallView(answer: $answer)
                    .padding(.horizontal, 20)
                    .padding(.top, 120)
                
                Spacer()
            }
        }
        .onTapGesture {
            withAnimation {
                buttonIsTapped.toggle()
                getFinalAnswer()            }
        }
        .onAppear(perform: delayAnswer)
    }
    func langSwitch() {
        withAnimation {
            langIsShowing.toggle()
            answer = ""
        }
    }

    private func getFinalAnswer() -> String {
        answer = langIsShowing
        ? DataStore.getEnglishAnswer()
        : DataStore.getRussianAnswer()
        
        return answer
    }

    private func delayAnswer() { withAnimation {
        self.timer = Timer.scheduledTimer(withTimeInterval: 5.0 ,
                                          repeats: true,
                                          block: {
            timer in
            answer = ""
        })
    }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


