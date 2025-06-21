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
        TableData(id: "0", value: "Lets try and make this 1 long"),
        TableData(id: "1", value: "Event 1"),
        TableData(id: "2", value: "Event 1"),
    ]
    
    @State private var selectedRow: TableData?
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Your Events")
                .padding(.leading)
                .bold()
            
            DatePicker("", selection: $selectedDate, displayedComponents: .date).onSubmit {
                print("\(selectedDate.description(with: .current))")
            }.datePickerStyle(.graphical)
                .border(.red)
            
//            DatePicker("", selection: $selectedDate, displayedComponents: .date)
//                .datePickerStyle(.graphical)
//                .border(.red)
            
            Spacer()
            
            Text("Events")
                .bold()
                .padding(.leading)
            
            Table(dataSource) {
                TableColumn("ID Column", value: \.id)
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
    let id: String
    let value: String
}
