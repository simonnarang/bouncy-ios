//
//  GameViewController.swift
//  Bouncy
//
//  Created by Simon Narang on 10/9/17.
//  Copyright © 2017 Simon Narang. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            view.showsFPS = false
            view.showsNodeCount = false
            // Load the SKScene from 'GameScene.sks'
            let scene = GameScene()
            print("this worked....")
            scene.scaleMode = .resizeFill
            scene.backgroundColor = SKColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.00)
            
            // Present the scene
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
        }
    }

    override var shouldAutorotate: Bool {
        return false
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
