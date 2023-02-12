//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local resturaunt",
                 description: "Go to your local resturaunt and pick up food."),
            Task(title: "Your favorite local cafe",
                 description: "Meet your friends at the local cafe"),
            Task(title: "Your go-to brunch place",
                 description: "Help clean up at your go-to brunch place fro volunteer hours."),
            Task(title: "Your favorite biking spot",
                 description: "Burn all the calroies you ate with a bike ride at your favorite spot")

        ]
    }
}
