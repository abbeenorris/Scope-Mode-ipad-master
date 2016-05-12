import Foundation
import UIKit
import MessageUI

class ContactController: UIViewController, MFMailComposeViewControllerDelegate {
    var hiddenProjectVar =  String()
    var projectTitle = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        projectTitle = hiddenProjectVar
    }
    
    
    
    
    
    
    
    
    
    
    //start email (email form wont work in simulator, you'll need a device to test  )
    @IBAction func sendEmailButtonTapped(sender: AnyObject) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.presentViewController(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
    }
    
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        //touch only things in this block
        mailComposerVC.setToRecipients(["sam.gray22@gmail.com"])
        mailComposerVC.setSubject( "company name" + projectTitle)
        mailComposerVC.setMessageBody("", isHTML: false)
        //end block
        return mailComposerVC
    }
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
    
    
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
        controller.dismissViewControllerAnimated(true, completion: nil)
        
    }
    //end email
    
    
}