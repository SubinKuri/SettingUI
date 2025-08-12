//
//  Scrollview.swift
//  Iphone settings
//
//  Created by subin kurian on 11/08/25.
//

import SwiftUI

struct Scrollview: View {
    @State private var scrollposition = ScrollPosition()
    @State private var num=0
    let color:[Color] = [.red,.blue,.green,.yellow,.orange,.purple,.pink,.black,.white]
    var body: some View {
        ZStack (alignment:.bottomTrailing){
            ScrollView{
                VStack(spacing: 24){
                    ForEach(color,id:\.self){color in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(color)
                            .frame(width: 360, height: 240)
                            .onScrollVisibilityChange{isVisible in
                                    if isVisible{
                                        print("\(color) isvisible")
                                    }
                                }
                    }
                }
            }
            .scrollIndicators(.hidden)
            .scrollPosition($scrollposition)
            .animation(.spring, value: scrollposition)
            VStack{
                Button {
                    scrollposition.scrollTo(edge: .top)
                } label: {
                    Image(systemName:"arrow.up.circle.fill")
                        .resizable()
                        .frame(width:56, height: 56)
                        .foregroundColor(.white)
                        
                }
                Button {
                    scrollposition.scrollTo(edge: .bottom)
                } label: {
                    Image(systemName:"arrow.down.circle.fill")
                        .resizable()
                        .frame(width:56, height: 56)
                        .foregroundColor(.white)
                }
                Button {
                    if num<=color.count-1{
                        scrollposition.scrollTo(id:color[num])
                        num=num+3
                    }
                    else{
                        num=0
                    }
                } label: {
                    Image(systemName:"eraser")
                        .resizable()
                        .frame(width:56, height: 56)
                        .foregroundColor(.white)
                }

        
                

            }
        }
    }
}
#Preview {
    Scrollview()
}
