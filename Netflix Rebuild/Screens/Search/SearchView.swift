//
//  SearchView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/7/21.
//

import SwiftUI
import Kingfisher

struct SearchView: View {
    @State private var searchTerm: String = ""
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                SearchBar(text: $searchTerm)
                    .frame(height: 35)
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack {
                        HStack {
                            Text("Top Search")
                                .font(.system(size: 17))
                                .bold()
                            Spacer()
                        }
                        .padding(.top, 15)
                        .foregroundColor(.white)
                        ForEach(topSearchFilms, id: \.id) { movie in
                            Button(action: {
                                
                            }, label: {
                                HStack {
                                    KFImage(URL(string: movie.poster)!)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 120, height: 80)
                                        .cornerRadius(8)
                                        .clipped()
                                        
                                    Text(movie.title)
                                        .font(.system(size: 14))
                                        .bold()
                                    Spacer()
                                    Image(systemName: "play.circle")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 34, height: 34)
                                        .foregroundColor(.white)
                                    
                                }.foregroundColor(.white)
                            })
                        } // end ForEach
                    } // end VStack
                }) // End scrollView
            } // VStack
            .padding(.horizontal, 15)
        } // Container: ZStack
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
