//
//  Workouts.swift
//  thor-kit
//
//  Created by Victor Rivera on 8/31/19.
//  Copyright © 2019 Victor Rivera. All rights reserved.
//

import Foundation

struct Workout {
    
    private(set) public var name: String
    private(set) public var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
