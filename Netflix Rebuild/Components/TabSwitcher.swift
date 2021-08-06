//
//  TabSwitcher.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import SwiftUI

enum TabType: String {
    case episodes = "Episodes"
    case trailers = "Trailers & More"
    case more = "More Like This"
}

struct TabSwitcher: View {
    var tabs: [TabType]
    var movie: Movie
    @State private var currentTab: TabType = .episodes
    let tabTitleFontSize = CGFloat(13)
    
    var body: some View {
        VStack {
            /* SEGMENTED CONTROL */
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 18) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack(alignment: .leading, spacing: 10) {
                            /* TOP INDICATOR */
                            Rectangle()
                                .frame(width: tab.rawValue.widthOfString(font: UIFont.systemFont(ofSize: tabTitleFontSize)), height: 4)
                                .foregroundColor(currentTab == tab ? .red : .clear)
                                
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: tabTitleFontSize))
                                    .bold()
                                    .foregroundColor(currentTab == tab ? .white : .gray)
                            }).buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            })
            
            /* SELECTED VIEW */
            switch currentTab {
            case .episodes:
                EpisodesView(episodes: episodeList)
            case .trailers:
                TrailersView(trailers: trailerList)
            case .more:
                MoreLikeThisView(movies: similarMovies)
            }
        }.foregroundColor(.white)
    }
}

struct TabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            TabSwitcher(tabs: [.episodes, .trailers, .more],
                        movie: movie4)
        }
    }
}
