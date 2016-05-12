import Foundation
import UIKit

class RunningTimeController: UIViewController {
    var hiddenProjectVar =  String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : SummaryController = segue.destinationViewController as! SummaryController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
    
}