//
//  TrailersView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import SwiftUI

struct TrailersView: View {
    var trailers: [Trailer]
    
    var body: some View {
        VStack {
            ForEach(trailers, id: \.id) { trailer in
                VStack(alignment: .leading) {
                    VideoPreviewImage(imageUrl: trailer.thumbnailUrl,
                                      videoUrl: trailer.videoUrl)
                    Text(trailer.name)
                        .font(.caption)
                }.padding(.bottom, 10)
            }
        }
    }
}

struct TrailersView_Previews: PreviewProvider {
    static var previews: some View {
        TrailersView(trailers: trailerList)
    }
}
