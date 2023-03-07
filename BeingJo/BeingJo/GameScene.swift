//
//  GameScene.swift
//  BeingJo
//
//  Created by Valerie on 07.03.23.
//

import SpriteKit
import GameplayKit

var player = SKSpriteNode(imageNamed: "Jo")
//var playerColor = UIColor.orange
var backgroundColorCustom = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0)
var playerSize = CGSize(width: 50, height: 50)

var touchLocation = CGPoint()

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        self.backgroundColor = backgroundColorCustom
        
        spawnPlayer()
    }
  
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            touchLocation = touch.location(in: self)
            
            player.position.x = touchLocation.x
            player.position.y = touchLocation.y
        }
    }
    
    func spawnPlayer(){
        player.xScale = 2
        player.yScale = 2
        player.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame) - 200)
        self.addChild(player)
    }
    
}
