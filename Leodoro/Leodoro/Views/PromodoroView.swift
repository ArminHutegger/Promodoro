//
//  PromodoroView.swift
//  Leodoro
//
//  Created by Armin Hutegger on 24.11.26.
//

import SwiftUI

struct PromodoroView: View {
    @State var viewModel = PromodoroViewModel()
    
    var body: some View {
        VStack{
            Text("Hello")
                .font(.title)
                .padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,30)
            Spacer()
            ZStack{
                CircularProgressView(progress: viewModel.progress,color: viewModel.progressColor)
                    .opacity(viewModel.isProgressVisible ? 1 : 0)
                Image("Pomodoro")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200,height: 200)
            }.padding(50)
            Spacer()
            Text("Test")
                .font(.largeTitle)
                .bold()
            
        }.background(viewModel.progressColor)
            .opacity(0.5)
            .task {
                
            }
            .onDisappear{
                print("Promodoro Timer Dissmissed")
            }
    }
}

#Preview {
    PromodoroView()
}
