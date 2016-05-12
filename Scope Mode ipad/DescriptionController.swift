import Foundation
import UIKit

class DescriptionController: UIViewController {
    var hiddenProjectVar =  String()
    var videoTypeVar = String()
    var budgetVar = String()
    var platformVar = String()
    
    @IBOutlet weak var descriptionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : StyleController = segue.destinationViewController as! StyleController
        projectTitle.hiddenProjectVar = hiddenProjectVar
        
        let videoType : StyleController = segue.destinationViewController as! StyleController
        videoType.videoTypeVar = videoTypeVar
        
        let budget : StyleController = segue.destinationViewController as! StyleController
        budget.budgetVar = budgetVar
        
        let platform : StyleController = segue.destinationViewController as! StyleController
        platform.platformVar = platformVar
        
        let description : StyleController = segue.destinationViewController as! StyleController
        description.descriptionVar = descriptionText.text!
        
    }
}
