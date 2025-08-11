import SwiftUI

struct AnotherSettingView: View {
    @State private var gridEnabled = false
    @State private var level = false
    @State private var mirrorFrontCamera = false
    @State private var outsideframe = true
    @State private var portraitMode = true
    @State private var lenscorrection = true
    @State private var macroMode = true
    
    var body: some View {
        NavigationStack {
            List {
                
               
                Section {
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Text("Photographic Styles")
                                .font(.system(size: 18, weight: .regular))
                            Spacer()
                            Text("Standard")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                    }
                } footer: {
                    Text("Photographic Styles uses advanced scene understanding to adjust specific colors in different parts of the photo. Personalize how skin tones appear with incredible nuance to get the exact look you want.")
                        .font(.caption2)
                        .fontWeight(.regular)
                        .foregroundColor(.secondary)
                        .padding(.top, 2)
                        .multilineTextAlignment(.leading)
                }
                
                
                Section {
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Text("Record Video")
                                .font(.system(size: 18, weight: .regular))
                            Spacer()
                            Text("1080p at 30 fps")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Text("Record Slo-mo")
                                .font(.system(size: 18, weight: .regular))
                            Spacer()
                            Text("Standard")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Text("Record Sound")
                                .font(.system(size: 18, weight: .regular))
                            Spacer()
                            Text("Spatial Audio")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink(destination: AppleAccount()) {
                        Text("Formats")
                            .font(.system(size: 18, weight: .regular))
                    }
                    
                    NavigationLink(destination: AppleAccount()) {
                        Text("Preserve Settings")
                            .font(.system(size: 18, weight: .regular))
                    }
                }
                

                Section(header: Text("COMPOSITION")) {
                    Toggle(isOn: $mirrorFrontCamera) {
                        Text("Grid")
                            .font(.system(size: 18, weight: .regular))
                    }
                    
                    Toggle(isOn: $mirrorFrontCamera) {
                        Text("Level")
                            .font(.system(size: 18, weight: .regular))
                    }
                    Toggle(isOn: $mirrorFrontCamera) {
                        Text("Mirror Front Camera")
                            .font(.system(size: 18, weight: .regular))
                    }
                    Toggle(isOn: $gridEnabled) {
                        Text("View OutSide The Frame")
                            .font(.system(size: 18, weight: .regular))
                    }
                }
                
                
                
                Section(header: Text("PHOTO CAPTURE"),
                footer: Text("Automatically applies Portrait effects when taking photos in Photo mode.")) {
                    Toggle(isOn: $gridEnabled) {
                        Text("Portraits In Photo Mode")
                            .font(.system(size: 18, weight: .regular))
                    }
                }
                
                Section(footer: Text("Correct lens distortion on the front and Ultra Wide cameras.")){
                    Toggle(isOn: $gridEnabled) {
                        Text("Lens Correction")
                            .font(.system(size: 18, weight: .regular))
                    }
                    
                }
                Section(footer: Text("Show Camera control for automatically switching to the Ultra Wide camera to capture macro photos and videos.")){
                    Toggle(isOn: $gridEnabled) {
                        Text("Macro control")
                            .font(.system(size: 18, weight: .regular))
                    }
                }
                
                Section(
                    footer: Text("About Camera and ARKit & Privacy...")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.blue)
                ) {
                }
                
                

            }
            
            
            .navigationTitle("Camera")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AnotherSettingView()
}
