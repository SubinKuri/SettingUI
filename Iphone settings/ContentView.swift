//
//  ContentView.swift
//  Iphone settings
//
//  Created by subin kurian on 10/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    let settings: [Setting] = [
        Setting(title: "General", color: .white, imageName: "gear"),
        Setting(title: "Accessibility", color: .blue, imageName: "accessibility"),
        Setting(title: "Apple intelligence & siri", color: .red, imageName: "apple.intelligence"),
        Setting(title: "Camera", color: .white, imageName: "camera.fill"),
        Setting(title: "Search", color: .white, imageName: "magnifyingglass"),
        Setting(title: "iCloud", color: .blue, imageName: "icloud.fill")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                
                Section{
                    
                    
                    NavigationLink(destination: AppleAccount()) {
                        HStack(spacing: 12) {
                            Image(systemName: "apple.logo")
                                .font(.system(size: 30))
                                .foregroundColor(.blue)
                                .frame(width: 40, height: 40)
                                .background(
                                    Circle()
                                        .fill(Color.blue.opacity(0.1))
                                )
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Apple Account")
                                    .font(.system(size: 18, weight: .semibold))
                                Text("Sign in to access your iCloud data, the App Store, Apple services, and more.")
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                                    .lineLimit(2)
                            }
                            
                            Spacer()
                            
                        }
                        //                        .padding(.vertical, 8)
                    }
                    
                }
                Section{
                    ForEach(settings, id: \.title) { set in
                        NavigationLink(destination: rootSetting(viewToDisplay: set.title)) {
                            HStack {
                                imageSetting(color: set.color, imageName: set.imageName)
                                    .frame(width: 30, height: 30)
                                    .background(Color.black.opacity(0.8))
                                    .cornerRadius(5)
                                
                                Text(set.title)
                                    .font(.system(size: 18, weight: .medium))
                                    .padding(.leading,5)
                            }
                            .padding(.vertical, 6)
                        }
                    }
                }
                Section{
                    NavigationLink(destination:AppleAccount()){
                        HStack{
                            Image(systemName: "hourglass.tophalf.filled")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.blue)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Screen Time")
                                .font(.system(size: 18, weight: .medium))
                                .padding(.leading,5)
                        }
                        
                    }
                }
                Section{
                    NavigationLink(destination:AppleAccount()){
                        HStack{
                            Image(systemName: "hand.raised.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.blue)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Privacy & Security")
                                .font(.system(size: 18, weight: .medium))
                                .padding(.leading,5)
                        }
                        
                    }
                }
                Section{
                    NavigationLink(destination:AppleAccount()){
                        HStack{
                            Image(systemName: "gamecontroller.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Game Center")
                                .font(.system(size: 18, weight: .medium))
                                .padding(.leading,5)
                        }
                        
                    }
                    NavigationLink(destination:AppleAccount()){
                        HStack{
                            Image("Apple_Wallet")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.blue)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Wallet")
                                .font(.system(size: 18, weight: .medium))
                                .padding(.leading,5)
                        }
                        
                    }
                }
                Section{
                    NavigationLink(destination:AppleAccount()){
                        HStack{
                            Image("app")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color.blue)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Apps")
                                .font(.system(size: 18, weight: .medium))
                                .padding(.leading,5)
                        }
                        
                    }
                }
                Section{
                    NavigationLink(destination:AppleAccount()){
                        HStack{
                            Image(systemName: "hammer.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.gray)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Developer")
                                .font(.system(size: 18, weight: .medium))
                                .padding(.leading,5)
                        }
                        
                    }
                }
            }
            .navigationTitle("Settings")
            .listStyle(.insetGrouped)
            .searchable(text:$searchText, prompt: "Search")
            
        }
        
    }
}

#Preview {
    ContentView()
}

