//
//  MovieDetailView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import SwiftUI

struct HeaderButtons: View {
    var body: some View {
        VStack {
            // Top bar
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "chevron.left")
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "tv")
                        .padding(.horizontal, 10)
                })
                Button(action: {}, label: {
                    Image(systemName: "person.crop.rectangle")
                })
            }
            .padding(.horizontal, 20)
        }
    }
}

struct MovieDetailView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                HeaderButtons()
                // Video preview
                Rectangle()
                    .frame(width: .infinity, height: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.vertical, 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(alignment: .leading) {
                        Text("Prison Break")
                            .font(.system(size: 14))
                            .bold()
                        HStack {
                            Text("2018")
                                .font(.caption2)
                        }
                        HButton(title: "Play",
                                isOn: true,
                                isOnImage: "play.fill",
                                isOffImage: "play.fill",
                                backgroundColor: .white,
                                foregroundColor: .black,
                                action: {})
                        HButton(title: "Download",
                                isOn: true,
                                isOnImage: "arrow.down.to.line.alt",
                                isOffImage: "arrow.down.to.line.alt",
                                backgroundColor: Color.gray.opacity(0.5),
                                foregroundColor: .white,
                                action: {})
                        Text("Lorem ipsum dolor sit amet, omnis etiam cetero ei nam. Elaboraret eloquentiam quo id. Ceteros singulis efficiantur an his, nam dolores mediocrem et. Te elitr nonumy sit, eu duo reque inimicus, impetus offendit aliquando has id. Ius te facer altera timeam, quas homero populo ne mea, ex duo dicta graeci.")
                            .font(.caption2)
                        VStack(alignment: .leading) {
                            Text("Cast: Wentworth Miller, Dominic Purcell, Amaury Nilasco, Robert Kneper")
                            Text("Creator: Paul Scheuring")
                        }
                        .padding(.vertical, 2)
                        .lineLimit(1)
                        .font(.caption2)
                        .foregroundColor(.gray)
                        HStack(spacing: 40) {
                            VButton(title: "My List",
                                    isOn: false,
                                    isOnImage: "checkmark",
                                    isOffImage: "plus",
                                    action: {})
                            VButton(title: "Rate",
                                    isOn: false,
                                    isOnImage: "hand.thumbsup",
                                    isOffImage: "hand.thumbsup",
                                    action: {})
                            VButton(title: "Share",
                                    isOn: false,
                                    isOnImage: "location",
                                    isOffImage: "location",
                                    action: {})
                        }
                        .padding(.vertical, 5)
                        .padding(.horizontal, 15)
                        
                        TabSwitcher(tabs: [.episodes, .more, .trailers],
                                    movie: movie0)
                    }
                })
            }
            .foregroundColor(.white)
            .padding(.horizontal, 8)
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}


