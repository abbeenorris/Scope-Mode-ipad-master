import Foundation
import UIKit

class AnimationController: UIViewController {
    var hiddenProjectVar =  String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : MixedMediaController = segue.destinationViewController as! MixedMediaController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
    
}