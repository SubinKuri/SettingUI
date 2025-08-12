//
//  imagePicker.swift
//  Iphone settings
//
//  Created by subin kurian on 12/08/25.
//

import SwiftUI
import PhotosUI

struct imagePicker: View {
    @State private var showingCamera: Bool = false
    @State private var selectedItem: PhotosPickerItem?
    @State private var selectedImage: UIImage?
    var body: some View {
        VStack{
            if let selectedImage = selectedImage {
                Image(uiImage: selectedImage)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(100)
                    .frame(width: 300,height: 300)
                   
            }
            else{
                Image("photoNotFound")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .frame(width: 300,height: 300)
                    
            }
            Button(action: {
                            showingCamera = true // show the cameraview
                        }){
                            Text("take photo")
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: 300)
                                .background(Color.yellow)
                                .foregroundColor(.black)
                                .cornerRadius(25)
                        }
                        .sheet(isPresented: $showingCamera){
                            CameraView(image: $selectedImage)
                        }

            PhotosPicker(selection: $selectedItem,
                         matching: .images,
                         photoLibrary: .shared()
            ) {
                Text("select photo")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: 300)
                                      .background(Color.purple)
                                      .foregroundColor(.white)
                                      .cornerRadius(25)
            }
            .onChange(of: selectedItem){ newItem in
                if let newItem = newItem {
                    Task{
                        if let data=try? await newItem.loadTransferable(type: Data.self),let image=UIImage(data: data){selectedImage=image}
                    }
                }
            }
        }
    }
}

#Preview {
    imagePicker()
}
