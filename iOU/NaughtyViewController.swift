//
//  NaughtyViewController.swift
//  iOU
//
//  Created by Virgil Martinez on 12/20/17.
//  Copyright © 2017 Virgil Alexander Martinez. All rights reserved.
//

/*
 Naughty List for no fun wishes
 --Chores and generally poopy tasks
 */


import UIKit

class NaughtyViewController: UIViewController {
    
    //A Message Composer
    let messageComposer = MessageComposer()
    
    //MARK: - SYSTEM
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //MARK: - ACTIONS
    @IBAction func ex1(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title - ex. clean the dishes", alertMessage: "description of the wish", messageBody: "You have to clean the dishes tonight")
    }
    @IBAction func ex2(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex3(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex4(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex5(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex6(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex7(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex8(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex9(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex10(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex11(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex12(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex13(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    @IBAction func ex14(_ sender: UIButton) {
        alertAndSendMessage(alertTitle: "wish title", alertMessage: "description of the wish", messageBody: "message body")
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: - Personal Functions
    
    func alertAndSendMessage(alertTitle: String, alertMessage: String, messageBody: String) {
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let messageComposeVC = messageComposer.configuredMessageComposeViewController()
        messageComposeVC.body = messageBody
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
