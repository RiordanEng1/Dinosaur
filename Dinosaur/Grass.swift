//
//  Grass.swift
//  Dinosaur
//
//  Created by Engineers on 4/12/19.
//  Copyright © 2019 Engineers. All rights reserved.
//

import Foundation
import SpriteKit

class Grass {
    var sprite = SKSpriteNode(imageNamed: "ground")
    var phys : SKPhysicsBody?
    
    init(startX: Double, startY: Double) {
        sprite.position = CGPoint(x: startX, y: startY)
        sprite.size = CGSize(width: 1000.0, height: 50.0)
        phys = SKPhysicsBody(edgeFrom: CGPoint(x: -1000, y: -30), to: CGPoint(x: 1000, y: -30))
        phys?.isDynamic = false
        phys?.affectedByGravity = false
        sprite.physicsBody = phys
    }
}
