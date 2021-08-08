//
//  NewAndHotView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/7/21.
//

import SwiftUI

struct NewAndHotView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            Text("New and 🔥")
        }.foregroundColor(.white)
    }
}

struct NewAndHotView_Previews: PreviewProvider {
    static var previews: some View {
        NewAndHotView()
    }
}
