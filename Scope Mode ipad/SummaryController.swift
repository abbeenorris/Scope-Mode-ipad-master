import Foundation
import UIKit

class SummaryController: UIViewController {
    var hiddenProjectVar =  String()
    var videoTypeVar = String()
    var budgetVar = String()
    var platformVar = String()
    var descriptionVar = String()
    
    @IBOutlet weak var Projectt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : ContactController = segue.destinationViewController as! ContactController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
}