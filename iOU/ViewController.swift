//
//  ViewController.swift
//  iOU
//
//  Created by Virgil Martinez on 12/20/17.
//  Copyright © 2017 Virgil Alexander Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let messageComposer = MessageComposer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func callBtn(_ sender: UIButton) {
        let alert = UIAlertController(
            //change this**
            title: "Tell My ass to call you",
            //this**
            message: "When you just want me to call XD",
            preferredStyle: .actionSheet)
        
        let messageComposeVC = messageComposer.configuredMessageComposeViewController()
        
        //Text message body**
        messageComposeVC.body = "(IOU) Hey FOOL Call me right meow"
        
        //Alert
        //Use
        let action = UIAlertAction(title: "Use Now", style: .default, handler: {
            action in
            //Go to msg view controller
            self.present(messageComposeVC, animated: true, completion: nil)
        })
        alert.addAction(action)
        //Don't use
        let action1 = UIAlertAction(title: "Not Now", style: .destructive, handler: nil)
        alert.addAction(action1)
        present(alert, animated: true, completion: nil)
        
    }
    
}

