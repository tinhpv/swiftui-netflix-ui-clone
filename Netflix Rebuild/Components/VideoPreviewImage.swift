//
//  VideoPreviewImage.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import SwiftUI
import Kingfisher

struct VideoPreviewImage: View {
    var imageUrl: String
    var videoUrl: String
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(URL(string: imageUrl)!)
                .resizable()
                .scaledToFill()
            
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 10, height: 40)
                    .foregroundColor(.white)
            })
            .sheet(isPresented: $showingVideoPlayer, content: {
                VideoView(url: videoUrl)
            })
        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(imageUrl: "https://media.vov.vn/uploaded/cizotokek8ly8uzveukg/2019_03_13/1550361126_436_nho_ngo_thanh_van_viet_nam_da_co_mot_bo_phim_hanh_dong_xung_tam_hollywood_1d4a8371_1550303421_width1500height1000_vrdi.jpg",
                          videoUrl: "https://youtu.be/SXiWz0yLLdE")
    }
}
