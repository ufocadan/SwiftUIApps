//
//  LaunchScreenView.swift
//  onlineappwithunal
//
//  Created by Ünal Foçadan on 9.06.2024.
//

import SwiftUI

struct LaunchScreenView: View {
    @Binding var launchScreenMessage: String
    
    var body: some View {
        ZStack {
            Color.green // Background color
                .edgesIgnoringSafeArea(.all)
            
            Text(launchScreenMessage)
                .font(.largeTitle)
                .foregroundColor(.black)
        }
    }
}

