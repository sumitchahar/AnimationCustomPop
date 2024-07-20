//
//  AnimationPopView.swift
//  AnimationDefaultPopup
//
//  Created by Sumit on 19/07/24.
//

import SwiftUI

struct AnimationPopView: View {
    
    @State private var showing = true
    @State private var rotating = false

    @State public var title_info:String = "Info Message"
    @State public var details_info:String = "Using a custom label is really helpful for times you want to increase."
    @State public var color:Color = .orange

    var body: some View {
        ZStack {
            VStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(color)
                    .stroke(color, lineWidth: 1)
                    .frame(height:90)
                    .shadow(radius: 5)
                   .overlay(content: {
                       VStack(alignment:.leading) {
                           HStack(spacing:10) {
                               Image("alert_danger123_icon")
                                   .resizable()
                                   .frame(width:22,height:22)
                                   .padding([.leading],5)
                               VStack(alignment:.leading,spacing: 4) {
                                   Text(title_info)
                                       .foregroundStyle(.white)
                                       .font(.system(size: 18, weight: .medium, design: .default))
                                   Text(details_info)
                                       .foregroundStyle(.white)
                                       .font(.system(size: 16, weight: .regular, design: .default))
                            }
                              VStack {
                                 Button {
                                     rotating.toggle()
                                     withAnimation(.easeOut.delay(0.6)) {
                                         showing.toggle()
                                   }
                                  } label: {
                                       Image("close_error_exit_failure_icon")
                                             .resizable()
                                             .frame(width:14,height:14)
                                             .padding([.trailing,.top],15)
                                 }
                                Spacer()
                         }
                      }
                   }
               })
            }.padding([.leading,.trailing],6)
             .offset(y: showing ? -UIScreen.main.bounds.height/1.7 : -UIScreen.main.bounds.height/2.5)
             .onAppear {
                    rotating.toggle()
                    withAnimation(.easeOut.delay(2)) {
                        showing.toggle()
               }
            }
        }
    }
 }

#Preview {
    AnimationPopView()
}
