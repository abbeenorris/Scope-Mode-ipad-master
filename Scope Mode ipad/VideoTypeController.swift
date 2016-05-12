import Foundation
import UIKit

class VideoTypeController: UIViewController {
    var hiddenProjectVar =  String()
    var videoTypeVar = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var promotionalSwitch: UISwitch!
    @IBOutlet weak var productSwitch: UISwitch!
    @IBOutlet weak var testimonialSwitch: UISwitch!
    @IBOutlet weak var virualSwitch: UISwitch!
    
    
    
    
    
    
    
    @IBAction func promotionalSwitchPressed(sender: AnyObject) {
        if promotionalSwitch.on{
            videoTypeVar = "Promitional"
        }
    }

    @IBAction func productSwitchPressed(sender: AnyObject) {
        if productSwitch.on{
            videoTypeVar = "Product"
        }
    }
    
    @IBAction func testimonialSwitchPressed(sender: AnyObject) {
        if testimonialSwitch.on{
            videoTypeVar = "Testimonial"
        }
    }
    @IBAction func viralSiwtch(sender: AnyObject) {
        if virualSwitch.on{
            videoTypeVar = "Viral"
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : BudgetController = segue.destinationViewController as! BudgetController
        projectTitle.hiddenProjectVar = hiddenProjectVar
        
        let videoType : BudgetController = segue.destinationViewController as! BudgetController
        videoType.videoTypeVar = videoTypeVar
        
        
    }


    
}
