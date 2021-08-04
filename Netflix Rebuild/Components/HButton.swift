//
//  HButton.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import SwiftUI

struct HButton: View {
    var title: String
    var isOn: Bool
    var isOnImage: String
    var isOffImage: String
    var backgroundColor: Color = .clear
    var foregroundColor: Color = .white
    
    var buttonIcon: String {
        if isOn {
            return isOnImage
        } else {
            return isOffImage
        }
    }
    
    var action: () -> Void
    
    var body: some View {
        Button(action: { action() }, label: {
            HStack {
                Spacer()
                Image(systemName: buttonIcon)
                    .padding(.bottom, 3)
                Text(title)
                    .font(.system(size: 14))
                    .bold()
                Spacer()
            }
            .padding(.vertical, 9)
            .padding(.horizontal, 17)
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .cornerRadius(5.0)
        })
    }
}

struct HButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            HButton(title: "My List",
                    isOn: false,
                    isOnImage: "play.fill",
                    isOffImage: "play.fill",
                    backgroundColor: Color.white,
                    foregroundColor: Color.black,
                    action: {})
        }
    }
}
