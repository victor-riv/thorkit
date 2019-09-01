//
//  DataService.swift
//  thor-kit
//
//  Created by Victor Rivera on 8/31/19.
//  Copyright © 2019 Victor Rivera. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let workouts = [
        Workout(name: "Squat", image: "squat.jpeg"),
        Workout(name: "Bench", image: "bench.jpeg"),
        Workout(name: "Deadlift", image: "deadlift.jpeg"),
        Workout(name: "Overhead Press", image: "shoulders.jpeg")
    ]
    
    func getWorkouts() -> [Workout]{
       return workouts
    }
}
