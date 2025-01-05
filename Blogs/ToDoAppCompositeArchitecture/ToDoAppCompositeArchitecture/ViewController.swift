//
//  ViewController.swift
//  ToDoAppCompositeArchitecture
//
//  Created by Amit  Gupta on 5/1/2025.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set background color for clarity
        view.backgroundColor = .white

        // Initialize your SwiftUI view
        let swiftUIView = ContentView()

        // Embed SwiftUI view in a UIHostingController
        let hostingController = UIHostingController(rootView: swiftUIView)

        // Add UIHostingController as a child view controller
        addChild(hostingController)
        view.addSubview(hostingController.view)

        // Set up Auto Layout for the SwiftUI view
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

        // Notify the hosting controller that it has been moved to a parent
        hostingController.didMove(toParent: self)
    }
}



