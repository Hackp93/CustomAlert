//
//  ViewController.swift
//  CustomAlert
//
//  Created by Manu Singh on 07/04/19.
//  Copyright © 2019 Manu Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickShowAlert(_ sender : UIButton){
        showAlert("Use this class to configure alerts and action sheets with the message that you want to display and the actions from which to choose. After configuring the alert controller with the actions and style you want, present it using the present(_:animated:completion:) method. UIKit displays alerts and action sheets modally over your app's content.", ok: "OK", handler: {
            print("handler handled")
            print("with success!!")
        })
    }

}

