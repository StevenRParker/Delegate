//
//  ReceivingVC.swift
//  DelegateMayhem
//
//  Created by Steven Parker on 10/27/16.
//  Copyright © 2016 Steven Parker. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {
    
    @IBOutlet var receivingTextField: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidEnterData(data: String) {
        receivingTextField.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }

}

