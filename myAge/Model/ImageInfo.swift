//
//  ImageInfo.swift
//  myAge
//
//  Created by Tunar Mahmudov on 06.10.21.
//

import Foundation

struct ImageInfo: Codable {
    let urls: Urls
}

struct Urls: Codable {
    let regular: String
    var regularUrl: URL {
        return URL(string: regular)!
    }
}
