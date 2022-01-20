//
//  StateController.swift
//  Ashtray
//
//  Created by Leopold Lemmermann on 20.01.22.
//

import Foundation

final class StateController: ObservableObject {
    
    @Published var entries = [Entry]()
    
    let storageController = StorageController()
    
    func save() throws {
        try storageController.save(self.entries)
    }
    
    func load() throws -> [Entry] {
        try storageController.loadEntries()
    }
    
}
