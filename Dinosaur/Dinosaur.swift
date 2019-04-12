//
//  Dinosaur.swift
//  Dinosaur
//
//  Created by Engineers on 4/11/19.
//  Copyright © 2019 Engineers. All rights reserved.
//

import Foundation
import SpriteKit

class Dinosaur {
    var sprite = SKSpriteNode(imageNamed: "dinoImage")
    var phys : SKPhysicsBody?
    var yVel = 0.0
    var xVel = 0.0
    
    init() {
        sprite.position = CGPoint(x: 0, y: 350)
        phys = SKPhysicsBody(rectangleOf: sprite.size, center: sprite.anchorPoint)
        phys?.affectedByGravity = true
        sprite.physicsBody = phys
    }
    
    func toucingGround() {
        for body in (phys?.allContactedBodies())! {
            if body.
        }
    }
    
    func applyGravity(amount : Double) {
//        yVel -= amount
    }
}
