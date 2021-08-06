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
    var movie: Movie
    @State private var showSeasonPicker: Bool = false
    @State private var selectedSeason: Int = 1
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                ZStack {
                    VStack {
                        HeaderButtons()
                        // Video preview
                        VideoPreviewImage(imageUrl: trailer3.thumbnailUrl,
                                          videoUrl: trailer3.videoUrl)
                            .frame(width: UIScreen.main.bounds.width, height: 200)
                            .cornerRadius(5)
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
                                            movie: movie0,
                                            showSeasonPicker: $showSeasonPicker,
                                            selectedSeason: $selectedSeason)
                            }
                        })
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 8)
                    
                    
                    if showSeasonPicker {
                        Color.black.opacity(0.9)
                            .ignoresSafeArea(.all)
                        VStack(spacing: 27) {
                            Spacer()
                            ForEach(1..<5) { index in
                                Button(action: {
                                    selectedSeason = index
                                    showSeasonPicker = false
                                }, label: {
                                    let isSelected = index == selectedSeason
                                    Text("Season \(index)")
                                        .font(isSelected ? .system(size: 22, weight: .bold) : .system(size: 19, weight: .regular))
                                        .foregroundColor(isSelected ? .white : .gray)
                                })
                            }
                            Spacer()
                            Button(action: {
                                showSeasonPicker = false
                            }, label: {
                                Image(systemName: "xmark.circle.fill")
                                    .resizable()
                                    .frame(width: 42, height: 42)
                                    .padding(.bottom, 20)
                                
                            })
                        }.foregroundColor(.white)
                    }
                }
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
        
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: movie0)
    }
}


