//
//  MoreLikeThisView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import SwiftUI

struct MoreLikeThisView: View {
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, content: {
                ForEach(movies, id: \.id) { movie in
                    MovieItemView(movie: movie)
                }
            })
        }
    }
}

struct MoreLikeThisView_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThisView(movies: [movie3, movie6, movie2, movie0, movie5, movie10])
    }
}
