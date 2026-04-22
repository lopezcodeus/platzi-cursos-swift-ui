//
//  BabyCard.swift
//  Notes
//
//  Created by admin on 4/21/26.
//

import Foundation

struct BabyCard: Identifiable {
    let id: UUID = UUID()
    var title: String
    var body: String
    var type: BabyCardType
}

enum BabyCardType {
    case small
    case big
}
