//
//  SpendCategory.swift
//  Profitocracy
//
//  Created by Anton Gavrilov on 28.04.23.
//

import Foundation

struct SpendCategory: Identifiable, Hashable, Codable {
    let id: UUID
    var name: String
    var plannedAmount: Float?
    var isTracking: Bool
    
    init(id: UUID = UUID(), name: String, plannedAmount: Float?, isTracking: Bool) {
        self.id = id
        self.name = name
        self.plannedAmount = plannedAmount
        self.isTracking = isTracking
    }
}

extension SpendCategory {
    static var emptyCategory: SpendCategory {
        return SpendCategory(
            name: "",
            plannedAmount: nil,
            isTracking: true
        )
    }
}
