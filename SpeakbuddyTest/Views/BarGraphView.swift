//
//  BarGraphView.swift
//  SpeakbuddyTest
//
//  Created by Eric Kirkpatrick on 2023/11/10.
//

import SwiftUI
import Charts

struct BarGraphView: View {
    @State private var data: [BarModel] = [
        .init(type: "現在", count: 4, animate: false),
        .init(type: "三ヶ月", count: 8, animate: false),
        .init(type: "一年", count: 20, animate: false),
        .init(type: "二年", count: 40, animate: false)
    ]
    
    var body: some View {
                    
                    Chart (data) { period in
                        BarMark (
                            x: .value("Period", period.type),
                            y: .value("Count", period.animate ? period.count : 0)
                        ).foregroundStyle(
                            .linearGradient(
                                colors: [Color.SpeakbuddyTheme.mediumBlue, Color.SpeakbuddyTheme.lightBlue],
                                startPoint: .bottom,
                                endPoint: .top
                            )
                        )
                    }
                     .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                     .chartYScale(domain: 0...45)
                     .chartYAxis(.hidden)
                     .chartXAxis {
                     AxisMarks(stroke: StrokeStyle(lineWidth: 0))
                     }
                     .onAppear {
                        for (index,_) in data.enumerated() {
                            withAnimation(.easeOut(duration: 0.6).delay(Double(index) * 0.2)) {
                                data[index].animate = true
                            }
                        }
                     }
    }
}

#Preview {
    BarGraphView()
}
