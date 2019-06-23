//
//  ViewController.swift
//  Demo pushNotification
//
//  Created by Anh vũ on 6/19/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        LocaPushManager.shared.requestAuthorization()
    }

    @IBAction func start(_ sender: Any) {
        guard let text = textField.text else {return}
        guard let time = TimeInterval(text) else {return}
        LocaPushManager.shared.sendloadPush(in: time)
    }
    
}

