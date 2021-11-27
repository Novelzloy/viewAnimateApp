//
//  Animation.swift
//  viewAnimateApp
//
//  Created by Роман on 26.11.2021.
//


struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let delay: Double
    let duration: Double
    var description: String {
        """
        pesent: \(name)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        delay: \(String(format: "%.2f", delay))
        duration: \(String(format: "%.2f", duration))
        """
    }
    
    static func getAnimateRandom() -> Animation {
        Animation(name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeInOut",
                  force: Double.random(in: 1...1.5),
                  delay: Double.random(in: 1...2),
                  duration: 0.3)
    }
}
