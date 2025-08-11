//
//  imageSettings.swift
//  Iphone settings
//
//  Created by subin kurian on 10/08/25.
//

import SwiftUI
struct imageSetting: View {
    let color: Color
     let imageName: String
     
     var body: some View {
         Image(systemName: imageName)
             .resizable()
             .scaledToFit()
             .frame(width: 20, height: 20)
             .foregroundColor(color)
     }
 }

 struct RootSetting: View {
     let viewToDisplay: String
     var body: some View {
         Text("You selected \(viewToDisplay)")
             .navigationTitle(viewToDisplay)
     }
 }
