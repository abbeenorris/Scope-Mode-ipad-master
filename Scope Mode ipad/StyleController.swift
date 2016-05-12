// Hi kt, the code on this page doens't work, it wont pass the data in hiddenProjectVar(the data comes from ProjectNameConttroller and is passed through all the controllers up until this point) the problem is that we have 3 buttons on the page all going to different view controllers so i put the code to pass the data to the correct view controller into a action button which is linked to the right segue but this doesn't work. Could you ask Kyle about this? thanks Sam.

import Foundation
import UIKit

class StyleController: UIViewController {
    var hiddenProjectVar =  String()
    var videoTypeVar = String()
    var budgetVar = String()
    var platformVar = String()
    var descriptionVar = String()
    
    @IBAction func liveBtn(sender: AnyObject) {
        
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let DestViewController : LiveActionController = segue.destinationViewController as! LiveActionController
            DestViewController.hiddenProjectVar = hiddenProjectVar
            
        }
    }
    @IBAction func aniBtn(sender: AnyObject) {
        
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let DestViewController2 : AnimationController = segue.destinationViewController as! AnimationController
            DestViewController2.hiddenProjectVar = hiddenProjectVar
        
        }
    }
    
    @IBAction func mixedBtn(sender: AnyObject) {
        
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let DestViewController3 : MixedMediaController = segue.destinationViewController as! MixedMediaController
            DestViewController3.hiddenProjectVar = hiddenProjectVar
            
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    
    
    
    }
}