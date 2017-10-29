//
//  PuppyModel.swift
//  PuppyAnimation
//
//  Created by Darrel Jiang on 10/28/17.
//  Copyright © 2017 JIANG, DARREL [AG/1000]. All rights reserved.
//

import Foundation

class PuppyModel {
    var puppies: [Puppy] = []
    
    init() {
        self.puppies = self.retrieveAllPuppies()
    }
    
    private func retrieveAllPuppies() -> [Puppy] {
        let puppyURL = Bundle.main.url(forResource: "Puppies", withExtension: "json")
            let puppyData = try? Data(contentsOf: puppyURL!)
            let puppies = try! JSONDecoder().decode([Puppy].self, from: puppyData!)

        return puppies
    }
}
