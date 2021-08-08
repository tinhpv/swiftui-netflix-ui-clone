//
//  DownloadView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/7/21.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            Text("Download")
        }.foregroundColor(.white)
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadView()
    }
}
