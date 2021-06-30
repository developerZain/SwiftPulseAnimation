//
//  Pulsing.swift
//  CardView
//
//  Created by Zain Haider on 30/06/2021.
//

import UIKit

public class Pulsing: CALayer {

    fileprivate var animationGroup = CAAnimationGroup()
    fileprivate var initialPulseScale: CGFloat = 0
    fileprivate var nextPulseAfter: TimeInterval = 0
    fileprivate var animationDuration: TimeInterval = 1.5
    fileprivate var radius: CGFloat = 200
    fileprivate var numberOfPulses: CGFloat = .infinity
    
    override init(layer: Any) {
        super.init(layer: layer)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    /// Public Initialiser. Use this to create pulse
    /// - Parameters:
    ///   - numberOfPulses: Number of pulses you want to generate from origin
    ///   - radius: Radius or pulse
    ///   - position: Central origin of pulse. Usually it is centre of view
    ///   - duration: Animation Duration
    ///   - pulseColor: Pulse color
    public init(numberOfPulses: CGFloat = .infinity, radius: CGFloat, position: CGPoint, duration: TimeInterval, pulseColor: UIColor) {
        super.init()
        self.backgroundColor = pulseColor.cgColor
        self.contentsScale = UIScreen.main.scale
        self.opacity = 0
        self.radius = radius
        self.numberOfPulses = numberOfPulses
        self.position = position
        self.bounds = CGRect(x: 0, y: 0, width: radius * 2, height: radius * 2)
        self.cornerRadius = radius
        self.animationDuration = duration
        DispatchQueue.global(qos: .default).async {
            self.setupAnimationGroup()
            DispatchQueue.main.async {
                self.add(self.animationGroup, forKey: "pulse")
            }
        }
        
    }
    /// Create basic transform scale animation
    /// - Returns: CABasicAnimation for keyPath transform.scale.xy
    fileprivate func createScaleAnimation() -> CABasicAnimation {
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale.xy")
        scaleAnimation.fromValue = initialPulseScale
        scaleAnimation.toValue = 1
        scaleAnimation.duration = animationDuration
        return scaleAnimation
    }
    /// Create basic keyframe animation
    /// - Returns: CAKeyFramAnimation for keyPath opacity
    fileprivate func createOpacityAnimation() -> CAKeyframeAnimation {
         let opacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
        opacityAnimation.duration = animationDuration
        opacityAnimation.values = [0.4, 0.8, 0.0]
        opacityAnimation.keyTimes = [0, 0.2, 1]
        return opacityAnimation
    }
    /// Add all animations to animation group
    fileprivate func setupAnimationGroup() {
        self.animationGroup = CAAnimationGroup()
        self.animationGroup.duration = animationDuration + nextPulseAfter
        self.animationGroup.repeatCount = Float(numberOfPulses)
        
        let defaultCurve = CAMediaTimingFunction(name: .default)
        self.animationGroup.timingFunction = defaultCurve
        self.animationGroup.animations = [createScaleAnimation(), createOpacityAnimation()]
    }
}
