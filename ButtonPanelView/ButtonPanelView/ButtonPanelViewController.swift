//
//  ButtonPanelViewController.swift
//  ButtonPanelView
//
//  Created by Jude Lapuz on 11/17/21.
//

import Foundation
import UIKit

class ButtonPanelViewController: UIViewController {
    
    private let buttonPanelView = ButtonPanelView()
    private let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        label.sizeToFit()
        view.addSubview(label)
        buttonPanelView.delegate = self
        view.addSubview(buttonPanelView)
        
        googleButton()
        yahooButton()
        facebookButton()
        messengerButton()
        addConstraints()
    }
    
    private func addConstraints() {
        buttonPanelView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -32).isActive = true
        buttonPanelView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -16).isActive = true
    }
    
    private func googleButton() {
        let button = UIButton(frame: .zero)
        if let image = UIImage(named: "google") {
            button.setImage(image, for: .normal)
            button.layer.cornerRadius = 56 / 2
            button.isHidden = true
            //    button.addTarget(
            //      self, action: #selector(handleExpandedButtonTapped(_:)), for: .touchUpInside)
        }
        buttonPanelView.addButtonMenu(button: button)
    }
    
    private func yahooButton() {
        let button = UIButton(frame: .zero)
        if let image = UIImage(named: "yahoo!") {
            button.setImage(image, for: .normal)
            button.layer.cornerRadius = 56 / 2
            button.isHidden = true
            //    button.addTarget(
            //      self, action: #selector(handleExpandedButtonTapped(_:)), for: .touchUpInside)
        }
        buttonPanelView.addButtonMenu(button: button)
    }
    
    private func facebookButton() {
        let button = UIButton(frame: .zero)
        if let image = UIImage(named: "facebook") {
            button.setImage(image, for: .normal)
            button.layer.cornerRadius = 56 / 2
            button.isHidden = true
            //    button.addTarget(
            //      self, action: #selector(handleExpandedButtonTapped(_:)), for: .touchUpInside)
        }
        buttonPanelView.addButtonMenu(button: button)
    }

    private func messengerButton() {
        let button = UIButton(frame: .zero)
        if let image = UIImage(named: "messenger") {
            button.setImage(image, for: .normal)
            button.layer.cornerRadius = 56 / 2
            button.isHidden = true
            //    button.addTarget(
            //      self, action: #selector(handleExpandedButtonTapped(_:)), for: .touchUpInside)
        }
        buttonPanelView.addButtonMenu(button: button)
    }
}
    
// MARK: - ButtonPanelDelegate
extension ButtonPanelViewController: ButtonPanelDelegate {
    func didTapButtonWithText(_ text: String) {
        guard text != label.text else { return }
        label.text = text
    }
}
