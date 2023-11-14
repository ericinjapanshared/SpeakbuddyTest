//
//  SpeakbuddyPageView.swift
//  SpeakbuddyTest
//
//  Created by Eric Kirkpatrick on 2023/11/10.
//

import SwiftUI

struct SpeakbuddyPageView: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.SpeakbuddyTheme.bgGradientTop, Color.SpeakbuddyTheme.bgGradientBottom]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            if verticalSizeClass == .regular {
                VStack {
                    CloseButtonView()
                    GreetingView()
                    BarGraphView().overlay(Image("protty"), alignment: .topLeading)
                        .padding(.bottom, 20)
                    PlanView()
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
            } else {
                VStack {
                    CloseButtonView()
                    HStack {
                        Image("protty")
                        BarGraphView()
                        VStack {
                            GreetingView()
                            PlanView()
                        }
                    }
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
            }
        }
    }
}

#Preview {
    SpeakbuddyPageView()
}

struct PlanView: View {
    var body: some View {
        VStack {
            Text("スピークバディで")
                .font(.title2)
            Text("レベルアップ").font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(
                    .linearGradient(
                        colors: [Color.SpeakbuddyTheme.lightBlue, Color.SpeakbuddyTheme.mediumBlue],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                ).padding(.bottom, 20)
            Button() {
                
            }
        label: {
            Text("プランに登録する")
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(BlueButton())
        }
    }
}

struct GreetingView: View {
    var body: some View {
        Text("Hello")
            .font(.largeTitle)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        Text("SpeakBUDDY")
            .font(.largeTitle)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    }
}

struct CloseButtonView: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {}) {
                Image(systemName: "multiply.circle.fill")
                    .foregroundStyle(.black, .white)
                    .font(.system(size: 36.0))
                    .shadow(color:.gray, radius: 3)
            }
        }.padding(.bottom, 10)
    }
}
