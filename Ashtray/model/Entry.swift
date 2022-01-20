//
//  Entry.swift
//  Ashtray
//
//  Created by Leopold Lemmermann on 20.01.22.
//

import Foundation
import MyOthers

struct Entry: Codable, Identifiable {
    let id: String
    var amount: Int
    
    init(_ date: Date, amount: Int = 0) throws {
        self.id = try Self.getIDFromDate(date)
        self.amount = amount
    }
    
    init(_ id: ID, amount: Int = 0) {
        self.id = id
        self.amount = amount
    }
    
    static func getIDFromDate(_ date: Date) throws -> ID {
        date.getString("dd-MM-yyyy")
    }
}
