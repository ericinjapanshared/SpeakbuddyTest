//
//  BarModel.swift
//  SpeakbuddyTest
//
//  Created by Eric Kirkpatrick on 2023/11/10.
//

import Foundation

struct BarModel: Identifiable {
    var type: String
    var count: Double
    var animate: Bool
    var id = UUID()
}
