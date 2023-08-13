//
//  BallView.swift
//  Magic Ball
//
//  Created by Аня Беликова on 23.06.2023.
//

import SwiftUI

struct BallView: View {
    @Binding var answer: String
    
    var body: some View {
        let width = 300
                
        ZStack {
            Image(systemName: "world")
            
            Circle()
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.gray, .black]),
                                   center: .center,
                                   startRadius: 1,
                                   endRadius: 190
                                  )
            )
            
            Circle()
                .frame(width: CGFloat(Double(width) / 1.5))
                .foregroundColor(Color(.systemIndigo))
                .padding(65)
            
            Text("\(answer)")
                .frame(width: 170, height: 200, alignment: .center)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(width: 300, height: 300)
    }
}




