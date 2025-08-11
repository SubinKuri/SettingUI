//
//  SomeOtherSettingView.swift
//  Iphone settings
//
//  Created by subin kurian on 10/08/25.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        VStack {
            Text("Use Apple Intelligence in Your IPhone")
                .font(.title)
                .padding()
            
            Button("Close") {
                // dismiss is handled automatically by swiping down
            }
        }
    }
}
struct SomeOtherSettingView: View {
    @State private var showSheet = false
    @State private var toggi=false
    @State private var toggi2=true
    @State private var toggi3=true
    let access:[Setting] = [
        Setting(title: "Display & text size", color: .blue, imageName: "textformat.size"),
        Setting(title: "Motion", color: .green, imageName: "circle.dotted.and.circle"),
        Setting(title: "Spoken Content", color: .white, imageName: "captions.bubble")
    ]
    var body: some View {
        NavigationStack {
            List {
                Section {
                    VStack {
                        HStack {
                            Spacer()
                            Image("siri")
                                .resizable()
                                .frame(width: 90, height: 50)
                                .foregroundStyle(Color.blue)
                                .frame(width: 70, height: 70)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(20)
                            Spacer()
                        }
                        
                        Text("Apple Intelligence & Siri")
                            .bold()
                            .font(.title2)
                        
                        Text("A personal intelligence system integrated deeply into your iPhone, apps, and Siri.")
                            .multilineTextAlignment(.center)
                        Button("Learn more..."){
                            showSheet=true
                        }
                        .sheet(isPresented: $showSheet) {
                            SheetView()
                        }
                        
                    }
                }
                //                .padding()
                .padding(.bottom,20)
                
                Section(header: Text("SIRI REQUESTS")
                    .font(.caption)
                    .foregroundColor(.secondary),
                        footer: Text("Voice input is processed on iPhone, but transcripts of your requests are sent to Apple. About Siri & Privacy...")
                    .lineLimit(2)
                ) {
                    NavigationLink(destination:AppleAccount()){
                        HStack {
                            Text("Language")
                                .font(.system(size: 18, weight: .regular))
                            //                                .padding(.leading, 5)
                            Spacer()
                            Text("English (United States)")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                    }
                    NavigationLink(destination:AppleAccount()){
                        HStack {
                            Text("Talk to Siri")
                            
                        }
                    }
                    NavigationLink(destination:AppleAccount()){
                        HStack {
                            Spacer()
                            Toggle(isOn: $toggi) {
                                
                            }
                        }
                    }
                    NavigationLink(destination:AppleAccount()){
                        HStack {
                            Spacer()
                            Toggle(isOn: $toggi2) {
                                
                            }
                        }
                    }
                    NavigationLink(destination:AppleAccount()){
                        HStack {
                            Text("Voice")
                                .font(.system(size: 18, weight: .regular))
                            //                                .padding(.leading, 5)
                            Spacer()
                            Text("American (Voice 4)")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                    }
                    NavigationLink(destination:AppleAccount()){
                        HStack {
                            Text("Siri Responses")
                                .font(.system(size: 18, weight: .regular))
                            //                                .padding(.leading, 5)
                            Spacer()
                            
                        }
                    }
                    NavigationLink(destination:AppleAccount()){
                        HStack {
                            Text("Messaging with Siri")
                                .font(.system(size: 18, weight: .regular))
                            //                                .padding(.leading, 5)
                            Spacer()
                            
                        }
                    }
                    NavigationLink(destination:AppleAccount()){
                        HStack {
                            Text("My Information")
                                .font(.system(size: 18, weight: .regular))
                            //                                .padding(.leading, 5)
                            Spacer()
                            Text("None")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                    }
                    
                }
                
                Section(header: Text("SUGGESTIONS")
                    .font(.caption)
                    .foregroundColor(.secondary),
                        footer:Text("Apple can make suggestions in Search, on Home Screen and Lock Screen, when sharing, or when you may want to listen to media.")
                ) {
                    
                    HStack {
                        
                        Text("Suggest Apps Before Searching")
                            .font(.system(size: 16, weight: .regular))
                        Spacer()
                        Toggle(isOn: $toggi3) {
                            
                        }
                        //                                .padding(.leading, 5)
                    }
                    HStack {
                        
                        Text("Reset Hidden Suggestions")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.blue)
                        
                        //                                .padding(.leading, 5)
                    }
                    HStack {
                        
                        Text("Allow Notifications")
                            .font(.system(size: 16, weight: .regular))
                        Spacer()
                        Toggle(isOn: $toggi3) {
                            
                        }
                        //                                .padding(.leading, 5)
                    }
                    
                    HStack {
                        
                        Text("Show in App Library")
                            .font(.system(size: 16, weight: .regular))
                        Spacer()
                        Toggle(isOn: $toggi3) {
                            
                        }
                        //                                .padding(.leading, 5)
                    }
                    
                    HStack {
                        
                        Text("Show When Sharing")
                            .font(.system(size: 16, weight: .regular))
                        Spacer()
                        Toggle(isOn: $toggi3) {
                            
                        }
                        //                                .padding(.leading, 5)
                    }
                    
                    HStack {
                        
                        Text("Show Listening Suggestions")
                            .font(.system(size: 16, weight: .regular))
                        Spacer()
                        Toggle(isOn: $toggi3) {
                            
                        }
                        //                                .padding(.leading, 5)
                    }
                    
                    
                    
                    
                }
                
                
                Section(header: Text("APPLE INTELLIGENCE AND SIRI APP ACCESS")
                    .font(.caption)
                    .foregroundColor(.secondary),
                        footer: Text("Apple Intelligence is built for privacy. Your data is not shared with Apple. About Apple Intelligence & Privacy...")
                        
                ) {
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Image(systemName: "appclip")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.blue)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("App Clips")
                                .font(.system(size: 18, weight: .regular))
                                .padding(.leading, 5)
                        }
                    }
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Image("app")
                                .resizable()
                                .scaledToFit()
                            //                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.blue)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Apps")
                                .font(.system(size: 18, weight: .regular))
                                .padding(.leading, 5)
                        }
                    }
                }
                
                
                
                
                
            }
        }    }
}

#Preview {
    SomeOtherSettingView()
}
