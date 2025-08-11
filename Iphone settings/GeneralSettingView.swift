//
//  ThemeSettingView.swift
//  Iphone settings
//
//  Created by subin kurian on 10/08/25.
//

import SwiftUI

struct ThemeSettingView: View {
    let gene:[Setting]=[
        Setting(title: "AutoFill & Passwords", color: .white, imageName: "key.fill"),
        Setting(title: "Dictionary", color: .blue, imageName: "text.book.closed.fill"),
        Setting(title: "Fonts", color: .white, imageName: "textformat.size"),
        Setting(title: "Keyboard", color: .gray, imageName: "keyboard.fill"),
        Setting(title: "Language & Region", color: .white, imageName: "globe"),
        
    ]
    var body: some View {
        NavigationStack{
            List{
                Section{
                    VStack{
                        HStack{
                            Spacer()
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(Color.gray)
                                .frame(width: 70, height: 70)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(20)
                            Spacer()
                            
                        }
                        Text("General")
                            .bold()
                            .font(.title2)
                        Text("Manage system-wide settings, including software updates, storage, background app refresh, AirDrop, and more.")

                            .multilineTextAlignment(.center)
                    }
                    .padding(.bottom,20)
                }
                Section{
                    NavigationLink(destination:AboutView()){
                        HStack{
                            Image(systemName: "info.square")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 18, height: 18)
                                .foregroundStyle(Color.gray)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("About")
                                .font(.system(size: 18,weight: .regular))
                                .padding(.leading,5)
                        }
                        
                    }

                }
                Section{
                    ForEach(gene,id:\.title){ set in
                        NavigationLink(destination: rootSetting(viewToDisplay: set.title)) {
                            HStack {
                                imageSetting(color: set.color, imageName: set.imageName)
                                    .frame(width: 30, height: 30)
                                    .background(Color.black.opacity(0.8))
                                    .cornerRadius(5)
                                
                                Text(set.title)
                                    .font(.system(size: 18, weight: .regular))
                                    .padding(.leading,5)
                            }
                            .padding(.vertical, 6)
                        }
                    }
                }
                Section{
                    NavigationLink(destination:AppleAccount()){
                        HStack{
                            Image(systemName: "gear")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 18, height: 18)
                                .foregroundStyle(Color.gray)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("VPN & Device Management")
                                .font(.system(size: 18,weight: .regular))
                                .padding(.leading,5)
                        }
                        
                    }
                }
                Section{
                    NavigationLink(destination:AppleAccount()){
                        HStack{
                            Image(systemName: "arrow.counterclockwise")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 18, height: 18)
                                .foregroundStyle(Color.gray)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Transfer or Reset iPhone")
                                .font(.system(size: 18, weight: .regular))
                                .padding(.leading,5)
                        }
                        
                    }
                }
                
                
            }
        
        }
       
        
    }
}

#Preview {
    ThemeSettingView()
}
