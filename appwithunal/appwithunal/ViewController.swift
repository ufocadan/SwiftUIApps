//
//  ViewController.swift
//  appwithunal
//
//  Created by Ünal Foçadan on 5.06.2024.
//

/* import UIKit
 
 class ViewController: UIViewController {
 
 override func viewDidLoad() {
 super.viewDidLoad()
 // Do any additional setup after loading the view.
 }
 
 
 }
 */

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create the SwiftUI view
        let contentView = ContentView()
        
        // Create a UIHostingController with the SwiftUI view
        let hostingController = UIHostingController(rootView: contentView)
        
        // Add the hosting controller as a child view controller
        addChild(hostingController)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(hostingController.view)
        
        // Constrain the hosting controller's view to the edges of the parent view
        NSLayoutConstraint.activate([
            hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        // Notify the hosting controller that it has been moved to a parent view controller
        hostingController.didMove(toParent: self)
    }
}
