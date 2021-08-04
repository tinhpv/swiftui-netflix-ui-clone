//
//  HomeView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/4/21.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    TopPreviewView(movie: movie2)
                        .frame(width: UIScreen.main.bounds.width)
                        .padding(.top, -70)
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack {
                                    ForEach(vm.getMovies(for: category), id: \.id) { movie in
                                        MovieItemView(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            })
                        }
                    }
                }
            }
        }.foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
