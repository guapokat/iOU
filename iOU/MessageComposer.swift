//
//  MessageComposer.swift
//  iOU
//
//  Created by Virgil Martinez on 12/21/17.
//  Copyright © 2017 Virgil Alexander Martinez. All rights reserved.
//

import Foundation
import MessageUI

let textMessageRecipients = ["put the phone number in here"] // for pre-populating the recipients list (optional, depending on your needs)
var decrement = false

class MessageComposer: NSObject, MFMessageComposeViewControllerDelegate {
    
    // A wrapper function to indicate whether or not a text message can be sent from the user's device
    func canSendText() -> Bool {
        return MFMessageComposeViewController.canSendText()
    }
    
    // Configures and returns a MFMessageComposeViewController instance
    func configuredMessageComposeViewController() -> MFMessageComposeViewController {
        let messageComposeVC = MFMessageComposeViewController()
        messageComposeVC.messageComposeDelegate = self  //  Make sure to set this property to self, so that the controller can be dismissed!
        messageComposeVC.recipients = textMessageRecipients
        messageComposeVC.body = "Example"
        
        return messageComposeVC
    }
    
    // MFMessageComposeViewControllerDelegate callback - dismisses the view controller when the user is finished with it
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
        if result == .sent {
            decrement = true
        }else {
            decrement = false
        }
        
        controller.dismiss(animated: true, completion: nil)
    }
}
