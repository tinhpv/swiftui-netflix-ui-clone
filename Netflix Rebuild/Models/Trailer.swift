//
//  Trailer.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import Foundation

struct Trailer: Identifiable {
    let id = UUID().uuidString
    let name: String
    let videoUrl: String
    let thumbnailUrl: String
}
