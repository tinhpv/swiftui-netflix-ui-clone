//
//  VideoView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import SwiftUI
import AVKit

struct VideoView: View {
    let url: String
    
    private var player: AVPlayer {
        return AVPlayer(url: URL(string: url)!)
    }
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(url: "https://youtu.be/SXiWz0yLLdE")
    }
}
