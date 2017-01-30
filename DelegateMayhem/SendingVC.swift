//
//  SendingVC.swift
//  DelegateMayhem
//
//  Created by Steven Parker on 10/27/16.
//  Copyright © 2016 Steven Parker. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {
    
    @IBOutlet var dataEntryTextField: UITextField!
    
    var delegate: DataSentDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func sendBtnWasPressed(_ sender: AnyObject) {
        if delegate != nil {
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }

}
