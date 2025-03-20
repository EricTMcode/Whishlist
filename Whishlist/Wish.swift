//
//  WhishModel.swift
//  Whishlist
//
//  Created by Eric on 20/03/2025.
//

import Foundation
import SwiftData

@Model
class Wish {
    var title: String

    init(title: String) {
        self.title = title
    }
}
