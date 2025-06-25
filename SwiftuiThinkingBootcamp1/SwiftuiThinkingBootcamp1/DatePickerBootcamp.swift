//
//  DatePickerBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State private var selectedDate = Date()
    let startDate: Date = Calendar.current.date(from: DateComponents(year: 2015)) ?? Date()
    let endingDate: Date = Calendar.current.date(byAdding: .year, value: 1, to: Date()) ?? Date()
    var body: some View {
//        DatePicker("Selected Date", selection: $selectedDate)
//        DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.hourAndMinute, .date])
        Text("Selected Date")
        Text("\(selectedDate, style: .date)")
        DatePicker("Select a Date", selection: $selectedDate, in: startDate...endingDate)
            .colorMultiply(.custom)
//            .accentColor(.blue)
//            .datePickerStyle(WheelDatePickerStyle())
//            .datePickerStyle(CompactDatePickerStyle())
//            .datePickerStyle(GraphicalDatePickerStyle())
    }
}

#Preview {
    DatePickerBootcamp()
}
