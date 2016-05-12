import Foundation
import UIKit

class PostProductionController: UIViewController {
    var hiddenProjectVar =  String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : RunningTimeController = segue.destinationViewController as! RunningTimeController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
}