//
//  ViewController.swift
//  Exterminate!
//
//  Created by nju on 2021/12/25.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    var tankAnchor: TinyToyTank._TinyToyTank?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(tankAnchor!)
    }
    @IBAction func tankLeft(_ sender: Any) {
        tankAnchor!.notifications.tankLeft.post()
    }
    
    @IBAction func tankForward(_ sender: Any) {
        tankAnchor!.notifications.tankForward.post()
    }
    
    @IBAction func tankRight(_ sender: Any) {
        tankAnchor!.notifications.tankRight.post()
    }
    
    
    @IBAction func turrentLeft(_ sender: Any) {
        tankAnchor!.notifications.turretLeft.post()
    }
    
    @IBAction func fire(_ sender: Any) {
        tankAnchor!.notifications.cannonFire.post()
    }
    
    @IBAction func turrentRight(_ sender: Any) {
        tankAnchor!.notifications.turretRight.post()
    }
    
}
