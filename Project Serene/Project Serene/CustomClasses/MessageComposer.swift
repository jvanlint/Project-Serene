//
//  MessageComposer.swift
//  CodeNameGenerator
//
//  Created by Jason van Lint on 14/09/2016.
//  Copyright © 2016 Dead Frog Studios. All rights reserved.
//

import UIKit
import MessageUI

/// Messaging class designed to offload and separate any calls from the app to perform email or SMS functions.
///
/// Contains delegate methods for MFMail and MFMessage and also uses some convenvience methods to formulate email and messages.
///
/// - Note: The calling object must have global scope for the swift file in order for calls to the delegates to work properly.
class MessageComposer: NSObject, MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate {
   
    // MARK: - Mail/Message View Controllers

    /// Initalises an email view controller and displays it to the user.
    ///
    /// - parameter bodyText:    The body of the email as a string.
    /// - parameter subjectText: The subject line for the email as a string.
    ///
    /// - returns: A configured mail view controller.
    func sendEmailWith(bodyText: String, subjectText: String) -> MFMailComposeViewController{
        
        let mailComposerVC = MFMailComposeViewController()
        
        mailComposerVC.mailComposeDelegate = self                   //Ensure the delegate is set to this class.
        
        mailComposerVC.setMessageBody(bodyText, isHTML: true)
        mailComposerVC.setSubject(subjectText)
        
        return mailComposerVC
    }

    /// Initalises a SMS/iMessage view controller and displays it to the user.
    ///
    /// - parameter bodyText: The body of the email as a string.
    ///
    /// - returns: A configured message view controller.
    func sendMessageWith(bodyText: String) -> MFMessageComposeViewController{
        
        let msgComposerVC = MFMessageComposeViewController()
        
        msgComposerVC.messageComposeDelegate = self                   //Ensure the delegate is set to this class.
        
        msgComposerVC.body = bodyText
        
        return msgComposerVC
    }
    
    // MARK: - Email/Messaging Delegate Methods
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        switch result
        {
        case MFMailComposeResult.cancelled:
            print("Cancelled")
        case MFMailComposeResult.sent:
            print("Sent")
        case MFMailComposeResult.failed:
                print("Failed")
        case MFMailComposeResult.saved:
            print("Saved")
            
        }
        controller.dismiss(animated: true, completion: nil)
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
            controller.dismiss(animated: true, completion: nil)
    }

}
