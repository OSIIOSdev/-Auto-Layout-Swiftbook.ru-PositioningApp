//
//  ViewController.swift
//  PositioningApp
//
//  Created by OSIIOSdev on 06.03.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - Private properties
    private var blueView = UIView()
    private var redView = UIView()

    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        setupLayout()
    }
    
    // MARK: - Private methods
    private func setupLayout() {
        configureBlueView()
        configureRedView()
    }
    
    private func configureBlueView() {
        view.addSubview(blueView)
        
        blueView.backgroundColor = .systemBlue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            blueView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            blueView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40)])
    }
    
    private func configureRedView() {
        view.addSubview(redView)
        
        redView.backgroundColor = .systemRed
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            redView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            redView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            redView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 40),
            redView.heightAnchor.constraint(equalTo: blueView.heightAnchor, multiplier: 1)])
    }
}

