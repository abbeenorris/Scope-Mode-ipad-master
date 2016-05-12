import Foundation
import UIKit

class DeadlineController: UIViewController {
    var hiddenProjectVar =  String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : PostProductionController = segue.destinationViewController as! PostProductionController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
}