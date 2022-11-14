//
//  ContentView.swift
//  Crazy-Week-10
//
//  Created by Troy Sawtelle on 10/23/22.
//

import SwiftUI
import SpriteKit

class GameScene:SKScene
{
    override func sceneDidLoad()
    {
        let cardScaleX = 0.06;
        let cardScaleY = 0.06;
        
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame);
        let discard1 = SKTexture(imageNamed: "Deck-Empty-Space")
        let discard2 = SKTexture(imageNamed: "Deck-Empty-Space")
        let discard3 = SKTexture(imageNamed: "Deck-Empty-Space")
        let discard4 = SKTexture(imageNamed: "Deck-Empty-Space")

        let spare1 = SKTexture(imageNamed: "Deck-Empty-Space")
        let spare2 = SKTexture(imageNamed: "Deck-Empty-Space")
        let spare3 = SKTexture(imageNamed: "Deck-Empty-Space")
        let play1 = SKTexture(imageNamed: "Deck-Empty-Space")
        let play2 = SKTexture(imageNamed: "Deck-Empty-Space")
        let play3 = SKTexture(imageNamed: "Deck-Empty-Space")
        let play4 = SKTexture(imageNamed: "Deck-Empty-Space")
        let play5 = SKTexture(imageNamed: "Deck-Empty-Space")
        let play6 = SKTexture(imageNamed: "Deck-Empty-Space")
        let play7 = SKTexture(imageNamed: "Deck-Empty-Space")
        
        let discard1Array:Array<SKTexture> = [discard1]
        let discard2Array:Array<SKTexture> = [discard2]
        let discard3Array:Array<SKTexture> = [discard3]
        let discard4Array:Array<SKTexture> = [discard4]

        let spare1Array:Array<SKTexture> = [spare1]
        let spare2Array:Array<SKTexture> = [spare2]
        let spare3Array:Array<SKTexture> = [spare3]
        let play1Array:Array<SKTexture> = [play1]
        let play2Array:Array<SKTexture> = [play2]
        let play3Array:Array<SKTexture> = [play3]
        let play4Array:Array<SKTexture> = [play4]
        let play5Array:Array<SKTexture> = [play5]
        let play6Array:Array<SKTexture> = [play6]
        let play7Array:Array<SKTexture> = [play7]
        
        let discardPile1:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let discardPile2:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let discardPile3:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let discardPile4:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");

        let sparePile1:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let sparePile2:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let sparePile3:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let playPile1:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let playPile2:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let playPile3:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let playPile4:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let playPile5:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let playPile6:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let playPile7:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");

        discardPile1.texture = discard1;
        discardPile2.texture = discard2;
        discardPile3.texture = discard3;
        discardPile4.texture = discard4;

        sparePile1.texture = spare1;
        sparePile2.texture = spare2;
        sparePile3.texture = spare3;
        playPile1.texture = play1
        playPile2.texture = play2
        playPile3.texture = play3
        playPile4.texture = play4
        playPile5.texture = play5
        playPile6.texture = play6
        playPile7.texture = play7

        discardPile1.position = CGPoint(x: 35, y: 720);
        discardPile2.position = CGPoint(x: 80, y: 720);
        discardPile3.position = CGPoint(x: 125, y: 720);
        discardPile4.position = CGPoint(x: 170, y: 720);

        sparePile1.position = CGPoint(x: 260, y: 720);
        sparePile2.position = CGPoint(x: 305, y: 720);
        sparePile3.position = CGPoint(x: 350, y: 720);
        playPile1.position = CGPoint(x: 60, y: 640);
        playPile2.position = CGPoint(x: 105, y: 640);
        playPile3.position = CGPoint(x: 150, y: 640);
        playPile4.position = CGPoint(x: 195, y: 640);
        playPile5.position = CGPoint(x: 240, y: 640);
        playPile6.position = CGPoint(x: 285, y: 640);
        playPile7.position = CGPoint(x: 330, y: 640);

        discardPile1.xScale = cardScaleX;
        discardPile1.yScale = cardScaleY;
        discardPile2.xScale = cardScaleX;
        discardPile2.yScale = cardScaleY;
        discardPile3.xScale = cardScaleX;
        discardPile3.yScale = cardScaleY;
        discardPile4.xScale = cardScaleX;
        discardPile4.yScale = cardScaleY;

        sparePile1.xScale = cardScaleX;
        sparePile1.yScale = cardScaleY;
        sparePile2.xScale = cardScaleX;
        sparePile2.yScale = cardScaleY;
        sparePile3.xScale = cardScaleX;
        sparePile3.yScale = cardScaleY;
        playPile1.xScale = cardScaleX;
        playPile1.yScale = cardScaleY;
        playPile2.xScale = cardScaleX;
        playPile2.yScale = cardScaleY;
        playPile3.xScale = cardScaleX;
        playPile3.yScale = cardScaleY;
        playPile4.xScale = cardScaleX;
        playPile4.yScale = cardScaleY;
        playPile5.xScale = cardScaleX;
        playPile5.yScale = cardScaleY;
        playPile6.xScale = cardScaleX;
        playPile6.yScale = cardScaleY;
        playPile7.xScale = cardScaleX;
        playPile7.yScale = cardScaleY;
        
        addChild(discardPile1);
        addChild(discardPile2);
        addChild(discardPile3);
        addChild(discardPile4);

        addChild(sparePile1);
        addChild(sparePile2);
        addChild(sparePile3);
        addChild(playPile1);
        addChild(playPile2);
        addChild(playPile3);
        addChild(playPile4);
        addChild(playPile5);
        addChild(playPile6);
        addChild(playPile7);

        discardPile1.run(SKAction.repeatForever(SKAction.animate(with: discard1Array, timePerFrame: 3.0)))
        discardPile2.run(SKAction.repeatForever(SKAction.animate(with: discard2Array, timePerFrame: 3.0)))
        discardPile3.run(SKAction.repeatForever(SKAction.animate(with: discard3Array, timePerFrame: 3.0)))
        discardPile4.run(SKAction.repeatForever(SKAction.animate(with: discard4Array, timePerFrame: 3.0)))
        
        sparePile1.run(SKAction.repeatForever(SKAction.animate(with: spare1Array, timePerFrame: 3.0)))
        sparePile2.run(SKAction.repeatForever(SKAction.animate(with: spare2Array, timePerFrame: 3.0)))
        sparePile3.run(SKAction.repeatForever(SKAction.animate(with: spare3Array, timePerFrame: 3.0)))
        playPile1.run(SKAction.repeatForever(SKAction.animate(with: play1Array, timePerFrame: 3.0)))
        playPile2.run(SKAction.repeatForever(SKAction.animate(with: play2Array, timePerFrame: 3.0)))
        playPile3.run(SKAction.repeatForever(SKAction.animate(with: play3Array, timePerFrame: 3.0)))
        playPile4.run(SKAction.repeatForever(SKAction.animate(with: play4Array, timePerFrame: 3.0)))
        playPile5.run(SKAction.repeatForever(SKAction.animate(with: play5Array, timePerFrame: 3.0)))
        playPile6.run(SKAction.repeatForever(SKAction.animate(with: play6Array, timePerFrame: 3.0)))
        playPile7.run(SKAction.repeatForever(SKAction.animate(with: play7Array, timePerFrame: 3.0)))
        
    }
}
struct ContentView: View
{
    var scene:SKScene
    {
        let scene = GameScene();
        scene.scaleMode = .resizeFill;
        scene.backgroundColor = SKColor.purple
        return scene;
    }
    var body: some View
    {
        SpriteView(scene: scene);
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
