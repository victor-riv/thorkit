//
//  WorkoutsVC.swift
//  thor-kit
//
//  Created by Victor Rivera on 8/31/19.
//  Copyright © 2019 Victor Rivera. All rights reserved.
//

import UIKit

class WorkoutsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var workoutTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        workoutTable.dataSource = self
        workoutTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getWorkouts().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutCell", for: indexPath) as? WorkoutCell {
            let workout = DataService.instance.getWorkouts()[indexPath.row]
            cell.updateViews(workout: workout)
            return cell
        }
        else {
            return WorkoutCell()
        }
    }
}

