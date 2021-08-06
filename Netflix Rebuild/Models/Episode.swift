//
//  Episode.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import Foundation

struct Episode: Identifiable {
    let id = UUID().uuidString
    let name: String
    let thumbnailUrlString: String
    let description: String
    let length: Int
    
    var thumbnailUrl: URL {
        return URL(string: thumbnailUrlString)!
    }
}
