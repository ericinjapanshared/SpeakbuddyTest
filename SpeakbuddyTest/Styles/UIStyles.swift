//
//  UIStyles.swift
//  SpeakbuddyTest
//
//  Created by Eric Kirkpatrick on 2023/11/14.
//

import SwiftUI

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0.231, green: 0.655, blue: 1))
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .shadow(color: Color(red: 0.8, green: 0.8, blue: 0.8), radius: 6, x:0, y:4)
    }
}

extension Color {
  struct SpeakbuddyTheme {
    static var bgGradientTop: Color  { return Color(red: 0.843, green: 0.8235, blue: 1.0) }
      static var bgGradientBottom: Color { return .white }
      static var lightBlue: Color  { return Color(red: 0.3686, green: 0.7686, blue: 1.0) }
      static var mediumBlue: Color  { return Color(red: 0.1176, green: 0.5686, blue: 1.0) }
  }
}
