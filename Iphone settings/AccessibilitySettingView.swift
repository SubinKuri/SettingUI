import SwiftUI

struct WidgetSettingView: View {
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
                            Image(systemName: "accessibility")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(Color.blue)
                                .frame(width: 70, height: 70)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(20)
                            Spacer()
                        }
                        
                        Text("Accessibility")
                            .bold()
                            .font(.title2)
                        
                        Text("Customize your iPhone to better meet your vision, hearing, and physical or motor needs. Adjust display and text size, enable voice control")
                            .multilineTextAlignment(.center)
                    }
                }
                
               
                Section(header: Text("VISION")
                    .font(.caption)
                    .foregroundColor(.secondary)
                ) {
                    ForEach(access, id: \.title) { set in
                        NavigationLink(destination: rootSetting(viewToDisplay: set.title)) {
                            HStack {
                                imageSetting(color: set.color, imageName: set.imageName)
                                    .frame(width: 30, height: 30)
                                    .background(Color.black.opacity(0.8))
                                    .cornerRadius(5)
                                
                                Text(set.title)
                                    .font(.system(size: 18, weight: .regular))
                                    .padding(.leading, 5)
                            }
                            .padding(.vertical, 6)
                        }
                    }
                }
                
                
                Section(header: Text("PHYSICAL AND MOTOR")
                    .font(.caption)
                    .foregroundColor(.secondary)
                ) {
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Image(systemName: "faceid")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.green)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Face ID & Attention")
                                .font(.system(size: 18, weight: .regular))
                                .padding(.leading, 5)
                        }
                    }
                    
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Image(systemName: "iphone.gen2.radiowaves.left.and.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.blue)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Control Nearby Device")
                                .font(.system(size: 18, weight: .regular))
                                .padding(.leading, 5)
                        }
                    }
                }
                
             
                Section(header: Text("HEARING")
                    .font(.caption)
                    .foregroundColor(.secondary)
                ) {
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Image(systemName: "captions.bubble.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.blue)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Subtitle & Captioning")
                                .font(.system(size: 18, weight: .regular))
                                .padding(.leading, 5)
                        }
                    }
                }
                
               
                Section(header: Text("SPEECH")
                    .font(.caption)
                    .foregroundColor(.secondary)
                ) {
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Image(systemName: "message.badge.waveform.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Live Speech")
                                .font(.system(size: 18, weight: .regular))
                                .padding(.leading, 5)
                            Spacer()
                            Text("Off")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Text("Vocals Shortcuts")
                                .font(.system(size: 18, weight: .regular))
                                .padding(.leading, 5)
                            Spacer()
                            Text("Off")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                    }
                }
                
               
                Section(header: Text("KEYBOARD")
                    .font(.caption)
                    .foregroundColor(.secondary)
                ) {
                    NavigationLink(destination: AppleAccount()) {
                        HStack {
                            Image(systemName: "keyboard")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(5)
                            Text("Keyboards & Typing")
                                .font(.system(size: 18, weight: .regular))
                                .padding(.leading, 5)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    WidgetSettingView()
}
