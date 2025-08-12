//
//  rootSetting.swift
//  Iphone settings
//
//  Created by subin kurian on 10/08/25.
//

import SwiftUI
struct rootSetting: View {
    let viewToDisplay: String
    
    var body: some View {
      switch viewToDisplay {
      case "General":
        ThemeSettingView()
      case "Accessibility":
        WidgetSettingView()
      case "Apple intelligence & siri":
        SomeOtherSettingView()
      case "Camera":
        AnotherSettingView()
      case "Search":
          AccountView()
      case "iCloud":
          CameraView1()
      case "AutoFill & Passwords":
          AutoFillView()
      case "Dictionary":
          DictionaryView()
//
      default:
        rootSetting(viewToDisplay: "")
      }
           
    }
      
   }
