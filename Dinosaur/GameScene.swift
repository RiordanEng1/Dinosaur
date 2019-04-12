//
//  GameScene.swift
//  Dinosaur
//
//  Created by Engineers on 4/11/19.
//  Copyright © 2019 Engineers. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var dino = Dinosaur()
    var grass = Grass(startX: 0.0, startY: 0.0)
    var gravity = 5.0
    
    override func didMove(to view: SKView) {
        self.addChild(dino.sprite)
        self.addChild(grass.sprite)
    }
    
    func touchDown(atPoint pos : CGPoint) {
        print("touch")
        if (dino.phys?.isResting)! {
            dino.phys?.applyImpulse(CGVector(dx: 0, dy: 300))
        } else {
            print("not resting")
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
    }
}
