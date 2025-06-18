//
//  DashboardView.swift
//  Calendr-SwiftUI
//
//  Created by Jireh Cordova on 13/06/2025.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var selectedDate: Date = Date()
    @State private var dataSource: [TableData] = [
        TableData(value: "Lets try and make this 1 long"),
        TableData(value: "Event 1"),
        TableData(value: "Event 1"),
    ]
    @State private var selectedRow: TableData?
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Your Events")
                .padding(.leading)
                .bold()
            
            DatePicker("", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .border(.red)
                .padding()
            
            Spacer()
            
            Text("Events")
                .bold()
                .padding(.leading)
            
            Table(dataSource) {
                TableColumn("Column Name") { value in
                    Text("\(value.value)")
                }
                TableColumn("Column Name 2") { value in
                    Text("\(value.id.uuidString)")
                }
            }
            .border(.red)
            
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

struct TableData: Identifiable, Hashable {
    let id = UUID()
    let value: String
}
