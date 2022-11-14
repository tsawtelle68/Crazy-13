import SwiftUI
import SpriteKit

class GameScene:SKScene
{
    override func sceneDidLoad()
    {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame);
        let crabTexture1 = SKTexture(imageNamed: "crab-sprite-1")
        let crabTexture2 = SKTexture(imageNamed: "crab-sprite-2")
        let crabTexture3 = SKTexture(imageNamed: "crab-sprite-3")
        let crabArray:Array<SKTexture> = [crabTexture1, crabTexture2, crabTexture3];
        let crabs:SKSpriteNode = SKSpriteNode(imageNamed: "crab-sprite-1");
        crabs.texture = crabTexture1;
        crabs.position = CGPoint(x:200, y:200);
        addChild(crabs);
        crabs.run(SKAction.repeatForever(SKAction.animate(with: crabArray, timePerFrame: 0.2)))
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

