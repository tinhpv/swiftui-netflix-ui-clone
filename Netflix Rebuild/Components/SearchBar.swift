//
//  SearchBar.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/8/21.
//

import SwiftUI
import Introspect

struct SearchBar: View {
    @Binding var text: String
    @State private var isSearching: Bool = false
    
    var body: some View {
        HStack {
            ZStack {
                Color.gray.opacity(0.5).cornerRadius(5)
                
                HStack(spacing: 10) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 13, height: 13)
                        .foregroundColor(Color.lightGray)
                        .padding(.leading, 10)
                    TextField("", text: $text)
                        .introspectTextView(customize: { textfield in
                            textfield.becomeFirstResponder()
                        })
                        .placeholder(when: text.isEmpty, placeholder: {
                            Text("Search")
                                .font(.system(size: 13))
                                .foregroundColor(.lightGray)
                        })
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                        .background(Color.clear)
                    if isSearching {
                        Button(action: {
                            self.text = ""
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .resizable()
                                .frame(width: 13, height: 13)
                                .foregroundColor(.lightGray)
                                .padding(.trailing, 13)
                        })
                    }
                }
                .onTapGesture {
                    self.isSearching = true
                }
            }
            .transition(.move(edge: .trailing))
            .animation(.spring())
            
            if isSearching {
                Button(action: {
                    self.isSearching = false
                    self.text = ""
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }, label: {
                    Text("Cancel")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                })
                .transition(.move(edge: .trailing))
                .animation(.spring())
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            SearchBar(text: .constant(""))
                .frame(height: 32)
        }
    }
}
