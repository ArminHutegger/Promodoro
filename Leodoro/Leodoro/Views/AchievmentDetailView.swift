//
//  AchievmentDetailView.swift
//  Leodoro
//
//  Created by Armin Hutegger on 20.10.26.
//

import SwiftUI

struct AchievmentDetailView: View {
    
    @State var achievment: Achievement
    
    var body: some View {
        ScrollView{
            VStack{
                Image(achievment.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400,height: 300)
                    .padding(.top,30)
                VStack{
                    Text("Achievment Locked")
                        .foregroundColor(.white)
                        .padding(20)
                VStack(alignment: .leading){
                        Text(achievment.title)
                        .font(.title)
                    HStack{
                        Text(achievment.description)
                        Spacer()
                    }
                    Divider()
                    Text("\(achievment.points) Points")
                    
                }.padding(20)
                    
                }.backgroundStyle(.pomodoroRed).cornerRadius(20).padding(20)
                
            }.navigationTitle(achievment.title)
            
                
        }
    }
}

#Preview {
    AchievmentDetailView(achievment: achievements[0])
}
