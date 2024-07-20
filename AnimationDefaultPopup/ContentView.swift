//
//  ContentView.swift
//  AnimationDefaultPopup
//
//  Created by Sumit on 19/07/24.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack {
            AnimationPopView(title_info: "Info Message", details_info: "Using a custom label is really helpful for times you want to increase.",color: .mint)
        }
    }
 }

#Preview {
    ContentView()
}
