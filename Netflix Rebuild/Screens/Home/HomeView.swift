//
//  HomeView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/4/21.
//

import SwiftUI

struct TopButtonsView: View {
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Button(action: {}, label: {
                    Image("netflix")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30)
                })
                Spacer()
                Image(systemName: "tv")
                    .padding(.horizontal, 10)
                Image(systemName: "person.crop.rectangle")
            }
            .padding(.horizontal, 20)
            HStack(spacing: 50) {
                Button(action: {}, label: {
                    Text("TV Show")
                        .font(.footnote)
                })
                Button(action: {}, label: {
                    Text("Films")
                        .font(.footnote)
                })
                Button(action: {}, label: {
                    HStack(spacing: 6) {
                        Text("Categories")
                            .font(.footnote)
                        Image(systemName: "arrowtriangle.down.fill")
                            .resizable()
                            .frame(width: 5, height: 5)
                    }
                })
            }
        }
    }
}


struct HomeView: View {
    var vm = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                
                ScrollView(showsIndicators: false) {
                    LazyVStack {
                        TopButtonsView()
                        TopPreviewView(movie: movie0)
                            .frame(width: UIScreen.main.bounds.width)
                            .padding(.top, -110)
                            .zIndex(-1)
                        ForEach(vm.allCategories, id: \.self) { category in
                            VStack {
                                HStack {
                                    Text(category)
                                    Spacer()
                                }
                                ScrollView(.horizontal, showsIndicators: false, content: {
                                    HStack {
                                        ForEach(vm.getMovies(for: category), id: \.id) { movie in
                                            NavigationLink(
                                                destination: MovieDetailView(movie: movie),
                                                label: {
                                                    MovieItemView(movie: movie)
                                                        .frame(width: 65, height: 140)
                                                        .padding(.horizontal, 14)
                                                })
                                        }
                                    }
                                })
                            }
                        }
                    }
                }
            }
            .foregroundColor(.white)
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

