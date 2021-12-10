//
//  ItemPray.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import Foundation

struct ItemPray: Identifiable {
    let id: String = UUID().uuidString
    var name : String
    var text : String
    var input: String
    var trans : String
    var img : String
}
