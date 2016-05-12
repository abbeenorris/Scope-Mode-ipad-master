import Foundation
import UIKit

class PreProductionController: UIViewController {
    var hiddenProjectVar =  String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : ScenesController = segue.destinationViewController as! ScenesController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
    
}