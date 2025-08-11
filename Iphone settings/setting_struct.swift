//
//  setting_struct.swift
//  Iphone settings
//
//  Created by subin kurian on 10/08/25.
//

import SwiftUI
struct Setting :Hashable {
    var id = UUID()
    let title:String
    let color:Color
    let imageName:String
}
