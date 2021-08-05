//
//  VButton.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import SwiftUI

struct VButton: View {
    var title: String
    var isOn: Bool
    var isOnImage: String
    var isOffImage: String
    
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
            VStack(spacing: 8) {
                Image(systemName: buttonIcon)
                    .foregroundColor(.white)
                Text(title)
                    .foregroundColor(.white)
                    .font(.footnote)
            }
        })
    }
}

struct VButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            VButton(title: "My List",
                    isOn: false,
                    isOnImage: "checkmark",
                    isOffImage: "plus",
                    action: {})
        }
    }
}
