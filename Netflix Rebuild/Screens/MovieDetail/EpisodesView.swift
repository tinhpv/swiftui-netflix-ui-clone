//
//  EpisodesView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import SwiftUI
import Kingfisher

struct EpisodesView: View {
    var episodes: [Episode]
    @Binding var seasonSelect: Bool
    @Binding var selectedSeason: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                seasonSelect = true
            }, label: {
                HStack(spacing: 10) {
                    Text("Season \(selectedSeason)")
                        .font(.caption)
                    Image(systemName: "chevron.down")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 5, height: 5)
                }
            })
            .buttonStyle(PlainButtonStyle())
            .padding(.bottom, 10)
            
            ForEach(episodes, id: \.id) { episode in
                VStack {
                    HStack {
                        ZStack {
                            KFImage(episode.thumbnailUrl)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 60)
                                .cornerRadius(4)
                            Image(systemName: "play.circle")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                        }
                        
                        VStack(alignment: .leading) {
                            Text(episode.name)
                                .font(.caption)
                            Text("\(episode.length)m")
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "arrow.down.to.line.alt")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 10, height: 10)
                    }
                    Text(episode.description)
                        .font(.caption)
                }
                .padding(.bottom, 15)
            }
        }
        .foregroundColor(.white)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            EpisodesView(episodes: episodeList,
                         seasonSelect: .constant(false),
                         selectedSeason: .constant(1))
        }
    }
}
