//
//  ViewController.swift
//  layout7
//
//  Created by Eddie Ahn on 2020/10/25.
//

import UIKit

class ViewController: UIViewController {

    let buttonA: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("hello", for: .normal)
        button.backgroundColor = .red
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        autoButton()
        // Do any additional setup after loading the view.
    }
    func autoButton() {
        view.addSubview(buttonA)
        // false로 해야 적용 됨.
        buttonA.translatesAutoresizingMaskIntoConstraints = false
        // isActive = true로 해야 함.
        buttonA.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        buttonA.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        buttonA.widthAnchor.constraint(equalToConstant: 48).isActive = true
        buttonA.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }

}

