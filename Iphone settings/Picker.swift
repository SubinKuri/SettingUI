//
//  Picker.swift
//  Iphone settings
//
//  Created by subin kurian on 12/08/25.
//

import SwiftUI

struct Picker: View {
    @State private var date=Date.now
    var body: some View {
//        DatePicker("enter date",selection: $date, in: Date.now...)
//                .labelsHidden()
//        
//        
        VStack{
            DatePicker("enter date",selection: $date)
                .datePickerStyle(WheelDatePickerStyle())
        }
        .padding()
    }
}

#Preview {
    Picker()
}
