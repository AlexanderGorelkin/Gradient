//
//  GradientView.swift
//  Gradient-Sparrow
//
//  Created by Александр Горелкин on 01.09.2023.
//

import UIKit


final class GradientView: UIView {
    
    lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.colors = [
            UIColor(red: 82/255, green: 156/255, blue: 201/255, alpha: 1).cgColor,
            UIColor(red: 254/255, green: 58/255, blue: 48/255, alpha: 1).cgColor
        ]
        gradient.startPoint = CGPoint(x: 0, y: 1)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        return gradient
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        layer.addSublayer(gradient)
       
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
        gradient.cornerRadius = layer.cornerRadius
    }
    
    func setup() {
        layer.cornerRadius = 16
        layer.shadowRadius = 16
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 16, height: 16)

        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
