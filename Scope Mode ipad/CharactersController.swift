import Foundation
import UIKit

class CharactersController: UIViewController {
    var hiddenProjectVar =  String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : PreProductionController = segue.destinationViewController as! PreProductionController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
    
}