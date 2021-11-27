//
//  ViewController.swift
//  viewAnimateApp
//
//  Created by Роман on 26.11.2021.
//

import UIKit
import Spring

class ViewController: UIViewController {

    
    @IBOutlet weak var viewAnimate: SpringView!
    @IBOutlet weak var labelWithDescription: UILabel!
    
    private var animation = Animation.getAnimateRandom()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelWithDescription.text = animation.description
    }


    @IBAction func actionButton(_ sender: UIButton) {
        labelWithDescription.text = animation.description
        
        viewAnimate.animation = animation.name
        viewAnimate.delay = animation.delay
        viewAnimate.force = animation.force
        viewAnimate.curve = animation.curve
        viewAnimate.duration = animation.duration
        viewAnimate.animate()
        
        animation = Animation.getAnimateRandom()
        sender.setTitle("Push \(animation.name)", for: .normal)
        
    }
}

