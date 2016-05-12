import Foundation
import UIKit

class LiveActionController: UIViewController {
    var hiddenProjectVar =  String()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(hiddenProjectVar)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : VideoSelectionController = segue.destinationViewController as! VideoSelectionController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
    
}