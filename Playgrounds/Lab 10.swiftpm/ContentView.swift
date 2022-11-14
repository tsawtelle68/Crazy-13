import SwiftUI
import SpriteKit
import UIKit
import PlaygroundSupport

class GameScene:SKScene
{
    let crabTexture1 = SKTexture(imageNamed: "crab-sprite-1")
    let crabTexture2 = SKTexture(imageNamed: "crab-sprite-2")
    let crabTexture3 = SKTexture(imageNamed: "crab-sprite-3")
    let crabs:SKSpriteNode = SKSpriteNode(imageNamed: "crab-sprite-1");
    
    override func sceneDidLoad()
    {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame);
        
        let crabArray:Array<SKTexture> = [crabTexture1, crabTexture2, crabTexture3];
        
        crabs.texture = crabTexture1;
        crabs.position = CGPoint(x:200, y:200);
        addChild(crabs);
        crabs.run(SKAction.repeatForever(SKAction.animate(with: crabArray, timePerFrame: 0.2)))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) 
    {
        guard let touch = touches.first else {return}
        // let location = touch.location(in: self)
        crabs.run(SKAction.move(to: CGPoint(x: touch.location(in: self).x, y: 200), duration: 4))
    }
}


struct ContentView: View {
    var scene:SKScene
    {
        let scene = GameScene();
        scene.scaleMode = .resizeFill;
        return scene;
    }
    var body: some View {
        SpriteView(scene: scene);
        
    }
}

