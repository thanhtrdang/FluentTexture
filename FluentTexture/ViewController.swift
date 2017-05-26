//
//  ViewController.swift
//  FluentTexture
//
//  Created by Thanh Dang on 5/24/17.
//  Copyright © 2017 Thanh Dang. All rights reserved.
//

import UIKit
import AsyncDisplayKit
import Hero
import Then

class ViewController: ASViewController<ASDisplayNode> {
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("Don't support")
    }
    
    override init(node: ASDisplayNode) {
        super.init(node: node)
    }
}

class Hero1ViewController: ViewController {
    init() {
        super.init(node: Hero1Node())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isHeroEnabled = true
        view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePan)))
    }
    
    @objc fileprivate func handlePan(_ panGesture: UIPanGestureRecognizer) {
        switch panGesture.state {
        case .began:
            self.present(Hero2ViewController(), animated: true, completion: nil)
        case .changed:
            // calculate the progress based on how far the user moved
            let translation = panGesture.translation(in: nil)
            let progress = translation.y / self.view.bounds.height
            
            print("h1: \(progress)")
            
            if progress < 0 {
                Hero.shared.update(progress: Double(-progress))
                if let heroNode = self.node as? Hero1Node {
                    Hero.shared.apply(modifiers: [.arc(intensity: progress)], to: heroNode.blueNode.view)
                    Hero.shared.apply(modifiers: [.arc(intensity: progress)], to: heroNode.purpleNode.view)
                    Hero.shared.apply(modifiers: [.arc(intensity: progress)], to: heroNode.greenNode.view)
                }
            }
        default:
            Hero.shared.end()
        }
    }
}

class Hero2ViewController: ViewController {
    init() {
        super.init(node: Hero2Node())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isHeroEnabled = true
        view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePan)))
    }
    
    @objc fileprivate func handlePan(_ panGesture: UIPanGestureRecognizer) {
        switch panGesture.state {
        case .began:
            self.dismiss(animated: true, completion: nil)
        case .changed:
            // calculate the progress based on how far the user moved
            let translation = panGesture.translation(in: nil)
            let progress = translation.y / self.view.bounds.height
            
            print("h2: \(progress)")
            
            if progress > 0 {
                Hero.shared.update(progress: Double(progress))
                if let heroNode = self.node as? Hero2Node {
                    Hero.shared.apply(modifiers: [.arc(intensity: progress)], to: heroNode.blueNode.view)
                    Hero.shared.apply(modifiers: [.arc(intensity: progress)], to: heroNode.purpleNode.view)
                    Hero.shared.apply(modifiers: [.arc(intensity: progress)], to: heroNode.greenNode.view)
                }
            }
        default:
            Hero.shared.end()
        }
    }
}

class HeroNode: ASDisplayNode {
    fileprivate var blueNode: ASDisplayNode!
    fileprivate var purpleNode: ASDisplayNode!
    fileprivate var greenNode: ASDisplayNode!

    override init() {
        super.init()
        automaticallyManagesSubnodes = true
        
        blueNode = ASDisplayNode()
        purpleNode = ASDisplayNode()
        greenNode = ASDisplayNode()
    }

    override func didLoad() {
        blueNode.do {
            $0.backgroundColor = .blue
            $0.cornerRadius = 8
            $0.view.heroID = "blue"
            $0.view.heroModifiers = [.arc]
        }
        purpleNode.do {
            $0.backgroundColor = .purple
            $0.cornerRadius = 8
            $0.view.heroID = "purple"
            $0.view.heroModifiers = [.arc]
        }
        greenNode.do {
            $0.backgroundColor = .green
            $0.cornerRadius = 8
            $0.view.heroID = "green"
            $0.view.heroModifiers = [.arc]
        }
    }

}

class Hero1Node: HeroNode {
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        blueNode.style
            .preferredSize(width: 80, height: 80)
        purpleNode.style
            .preferredSize(width: 120, height: 80)
        greenNode.style
            .preferredSize(width: 80, height: 80)
        
        let stackLayoutSpec = ASStackLayoutSpec
            .horizontal(blueNode, purpleNode, greenNode)
            .spacing(10)
        
        let centerLayoutSpec = ASCenterLayoutSpec
            .centerXY(stackLayoutSpec)
            .sizingOptions(.minimumXY)
        
        return centerLayoutSpec
    }
}

class Hero2Node: HeroNode {
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        blueNode.style
            .preferredSize(width: 140, height: 80)
        purpleNode.style
            .preferredSize(width: 140, height: 80)
        greenNode.style
            .preferredSize(width: 140, height: 80)
        
        let stackLayoutSpec = ASStackLayoutSpec
            .vertical(blueNode, purpleNode, greenNode)
            .spacing(10)
        
        let insetLayoutSpec = ASInsetLayoutSpec(stackLayoutSpec)
            .insets(left: 50)
        
        let centerLayoutSpec = ASCenterLayoutSpec(insetLayoutSpec)
            .centerXY()
            .sizeXY()
        
        return centerLayoutSpec
    }
}
