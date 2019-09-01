//
//  WorkoutCell.swift
//  thor-kit
//
//  Created by Victor Rivera on 8/31/19.
//  Copyright © 2019 Victor Rivera. All rights reserved.
//

import UIKit

class WorkoutCell: UITableViewCell {

    @IBOutlet weak var workoutName: UILabel!
    @IBOutlet weak var workoutImage: UIImageView!

    // func updateViews
    func updateViews(workout: Workout){
        workoutName.text = workout.name
        workoutImage.image = UIImage(named: workout.image)
    }
}
