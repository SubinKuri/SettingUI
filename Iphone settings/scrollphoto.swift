//
//  scrollphoto.swift
//  Iphone settings
//
//  Created by subin kurian on 11/08/25.
//

import SwiftUI

struct scrollphoto: View {
    @State private var scrollPosition=ScrollPosition()
    let car:[String]=["bmw","jimny","defender","porshe"]
    var body: some View {
        HStack{
            Spacer()
            Button {
                scrollPosition.scrollTo(id:car[0])
            } label: {
                Text("BWM")
            }
            Spacer()
            Button {
                scrollPosition.scrollTo(id:car[1])
            } label: {
                Text("Jimny")
            }
            Spacer()
            Button {
                scrollPosition.scrollTo(id:car[2])
            } label: {
                Text("Defender")
            }
            Spacer()
            Button {
                scrollPosition.scrollTo(id:car[3])
            } label: {
                Text("porshe")
            }
            Spacer()
        }
        .padding()
        ScrollView(.horizontal, showsIndicators:false) {
            HStack(spacing: 20) {
                ForEach(car, id: \.self) { car in
                    Image(car)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 360, height: 240)
                        .clipShape(RoundedRectangle(cornerRadius:20))
                        .padding()
                        .id(car)
                        
                }
            }
        }
        
        .scrollPosition($scrollPosition)
        .animation(.bouncy(duration: 0.5), value: scrollPosition)
        

    }
    
}

#Preview {
    scrollphoto()
}
