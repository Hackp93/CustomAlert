//
//  AlertViewController.swift
//  CustomAlert
//
//  Created by Manu Singh on 07/04/19.
//  Copyright © 2019 Manu Singh. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var alertTextLabel : UILabel!
    @IBOutlet weak var okButton : UIButton!
    
    var alertText: String?
    var buttonText : String?
    
    var handler : (()->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAlertTexts()
        // Do any additional setup after loading the view.
    }
    
    func setAlertTexts(){
        alertTextLabel.text = alertText
        okButton.setTitle(buttonText, for: .normal)
    }
    
    @IBAction func onClickOk(_ sender : UIButton){
        dismiss(animated: true, completion: nil)
        handler?()
        handler = nil
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIViewController {
    
    func showAlert(_ text : String, ok okString : String, handler : @escaping ()->Void) {
        let storyboard = UIStoryboard(name: "Alerts", bundle: nil)
        let alertController = storyboard.instantiateInitialViewController() as? AlertViewController
        alertController?.alertText = text
        alertController?.buttonText = okString
        alertController?.handler = handler
        alertController?.modalTransitionStyle = .crossDissolve
        alertController?.modalPresentationStyle = .overCurrentContext
        present(alertController!, animated: true, completion: nil)
    }
    
}
