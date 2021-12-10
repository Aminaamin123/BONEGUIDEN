//
//  ItemModal.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-17.
//

import Foundation

struct ItemModal: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let text: String
    let translate: String
}
