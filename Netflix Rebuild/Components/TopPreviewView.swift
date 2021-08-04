//
//  TopMoviePreviewView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/4/21.
//

import SwiftUI
import Kingfisher

struct TopPreviewView: View {
    var movie: Movie
    
    private func isTheLastCategory(_ category: String) -> Bool {
        if let idx = movie.categories.lastIndex(of: category) {
            return idx == movie.categories.count - 1
        } else {
            return false
        }
    }
    
    var body: some View {
        ZStack {
            KFImage(URL(string: movie.poster)!)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack(spacing: 15) {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                            if !isTheLastCategory(category) {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 2))
                            }
                        }
                    }
                }
                HStack(spacing: 38) {
                    Spacer()
                    VButton(title: "My List",
                            isOn: false,
                            isOnImage: "checkmark",
                            isOffImage: "plus",
                            action: {})
                    HButton(title: "Play",
                            isOn: false,
                            isOnImage: "play.fill",
                            isOffImage: "play.fill",
                            backgroundColor: Color.white,
                            foregroundColor: Color.black,
                            action: {})
                        .frame(width: 120)
                    VButton(title: "Info",
                            isOn: false,
                            isOnImage: "info.circle",
                            isOffImage: "info.circle",
                            action: {})
                    Spacer()
                }.padding(.bottom, 20)
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), .black]), startPoint: .top, endPoint: .bottom)
                    .padding(.top, 200)
            )
        }
        .foregroundColor(.white)
        
    }
}

struct TopPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        TopPreviewView(movie: movie2)
    }
}
