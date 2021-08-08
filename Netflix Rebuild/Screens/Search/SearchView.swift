//
//  SearchView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/7/21.
//

import SwiftUI

struct SearchView: View {
    @State private var searchTerm: String = ""
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                SearchBar(text: $searchTerm)
                    .frame(height: 35)
                Spacer()
            }.padding(.horizontal, 15)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
