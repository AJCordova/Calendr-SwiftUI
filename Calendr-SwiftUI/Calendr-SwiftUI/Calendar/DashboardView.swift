//
//  DashboardView.swift
//  Calendr-SwiftUI
//
//  Created by Jireh Cordova on 13/06/2025.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var selectedDate: Date = Date()
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Your Events")
                .padding()
                .border(.red)
                .bold()
            
            DatePicker("", selection: $selectedDate,
                       displayedComponents: .date)
                .datePickerStyle(.graphical)
                .border(.red)
            
            Spacer().border(.red)
            
            // Table
            Rectangle()
                .frame(width: .infinity, height: .infinity)
                .foregroundStyle(Color.teal)
                .border(.red)
            // replace with List
            
            
            Spacer()
            
            HStack{
                Button(action: {}, label: {
                    Text("Add Event")
                }).buttonStyle(.borderedProminent)
            }.frame(maxWidth: .infinity, alignment: .center)
            
        }
        .padding()
    }
}

#Preview {
    DashboardView()
}
