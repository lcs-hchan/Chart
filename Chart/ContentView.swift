//
//  ContentView.swift
//  Chart
//
//  Created by hayden on 2024-11-04.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        Chart {
            BarMark(
                x: .value("Day", "Monday"),
                y: .value("Steps", 6019)
            )

            BarMark(
                x: .value("Day", "Tuesday"),
                y: .value("Steps", 7200)
            )
        }
        .padding()
    }
}
struct ExampleTwoView: View {
    let weekdays = Calendar.current.shortWeekdaySymbols
        let steps = [ 10531, 6019, 7200, 8311, 7403, 6503, 9230 ]

        var body: some View {
            Chart {
                ForEach(weekdays.indices, id: \.self) { index in
                    BarMark(x: .value("Day", weekdays[index]), y: .value("Steps", steps[index]))
                }
            }
        }
}
struct PractiseView: View {
    let subjects = ["SBI3U","ENG3U","TEJ3M","ICS3U", "CHW3M", "MCR3U", "BAF3M"]
    let name = ["Biology","English","Computer Enginnering Technology", "Introduction to Computer Science"]
    let marks = [68.2, 67.0, 90.1, 69.3, 73.6, 65.7, 78.5]
    var body: some View {
        Chart {
            ForEach(subjects.indices, id: \.self) { index in
                BarMark(x: .value("subject", subjects[index]), y: .value("Mark", marks[index]))
                    .foregroundStyle(by: .value("subject", subjects[index]))
                    .annotation {
                        Text("\(marks[index])")
                    }
            }
        }
    }
}


#Preview {
    PractiseView()
}
