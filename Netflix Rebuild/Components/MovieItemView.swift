//
//  StandardHomeMovieView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/4/21.
//

import SwiftUI
import Kingfisher

struct MovieItemView: View {
    var movie: Movie
    
    var body: some View {
        KFImage(URL(string: movie.poster)!)
            .resizable()
            .scaledToFill()
    }
}

struct MovieItemView_Previews: PreviewProvider {
    static var previews: some View {
        MovieItemView(movie: movie1)
            .frame(width: 200, height: 300)
    }
}


