//
//  GradientViewController.swift
//  Gradient-Sparrow
//
//  Created by Александр Горелкин on 01.09.2023.
//

import UIKit


final class GradientViewController: UIViewController {
    
   
    private lazy var gradientView: GradientView = {
        let view = GradientView()
        view.heightAnchor.constraint(equalToConstant: 150).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(gradientView)
        gradientView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        gradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    
    
}
