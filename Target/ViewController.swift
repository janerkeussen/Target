//
//  ViewController.swift
//  Target
//
//  Created by Zhanerke Ussen on 04/07/2023.
//

import UIKit

class ViewController: UIViewController {
    private let centerCircle = UIView()
    private let midCircle = UIView()
    private let outerCircle = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubviews()
        setConstraints()
        setStyle()
    }
    
    private func setSubviews() {
        view.addSubview(outerCircle)
        view.addSubview(midCircle)
        view.addSubview(centerCircle)
    }
    
    private func setConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        centerCircle.translatesAutoresizingMaskIntoConstraints = false
        constraints += [centerCircle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                        centerCircle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                        centerCircle.heightAnchor.constraint(equalToConstant: 60),
                        centerCircle.widthAnchor.constraint(equalToConstant: 60)]
        
        midCircle.translatesAutoresizingMaskIntoConstraints = false
        constraints += [midCircle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                        midCircle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                        midCircle.heightAnchor.constraint(equalToConstant: 175),
                        midCircle.widthAnchor.constraint(equalToConstant: 175)]
        
        outerCircle.translatesAutoresizingMaskIntoConstraints = false
        constraints += [outerCircle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                        outerCircle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                        outerCircle.heightAnchor.constraint(equalToConstant: 275),
                        outerCircle.widthAnchor.constraint(equalToConstant: 275)]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setStyle() {
        view.backgroundColor = .white
        
        centerCircle.backgroundColor = .red
        centerCircle.layer.cornerRadius = 30
        
        midCircle.layer.borderWidth = 20
        midCircle.layer.borderColor = UIColor.blue.cgColor
        midCircle.layer.cornerRadius = 85
        
        outerCircle.layer.borderColor = UIColor.red.cgColor
        outerCircle.layer.borderWidth = 20
        outerCircle.layer.cornerRadius = 135
    }
}

