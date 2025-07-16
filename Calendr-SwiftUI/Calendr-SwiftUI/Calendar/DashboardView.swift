//
//  DashboardView.swift
//  Calendr-SwiftUI
//
//  Created by Jireh Cordova on 13/06/2025.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var selectedDate: Date = Date()
    @State private var dataSource: [Date] = []
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Your Events")
                .padding(.leading)
                .bold()
            
            DatePicker(
                        "",
                       selection: $selectedDate,
                       displayedComponents: .date
            ).datePickerStyle(.graphical)
                
            
            Spacer()
            
            Text("Selected: \(selectedDate.description)")
                .padding()
            if dataSource.isEmpty {
                Text("Place table of dates here or an alternate view if data source is empty")
                    .padding()
            } else {
                // Show a list here
            }
            
            Spacer()
            
            HStack{
                Button(action: {}, label: {
                    Text("Add Event")
                }).buttonStyle(.borderedProminent)
            }.frame(maxWidth: .infinity, alignment: .center)
        }
    }
}

#Preview {
    DashboardView()
}
