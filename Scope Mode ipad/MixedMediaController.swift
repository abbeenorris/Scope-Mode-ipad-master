import Foundation
import UIKit

class MixedMediaController: UIViewController {
    var hiddenProjectVar =  String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : VideoSelectionController = segue.destinationViewController as! VideoSelectionController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
}