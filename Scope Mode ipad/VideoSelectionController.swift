import Foundation
import UIKit

class VideoSelectionController: UIViewController {
    var hiddenProjectVar =  String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : CharactersController = segue.destinationViewController as!  CharactersController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
    
}