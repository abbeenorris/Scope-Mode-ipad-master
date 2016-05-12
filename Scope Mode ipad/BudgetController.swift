import Foundation
import UIKit

class BudgetController: UIViewController {
    var hiddenProjectVar =  String()
    var videoTypeVar = String()
    var budgetVar = String()
    
    
    @IBOutlet weak var budgetSlider: UISlider!
    @IBOutlet weak var budgetLabel: UILabel!
    let step: Float = 100
    
    @IBAction func BudgetChanged(sender: AnyObject) {
        let currentlVaule = round(budgetSlider.value / step) * step
        budgetLabel.text = "£\(currentlVaule)"
        budgetVar = budgetLabel.text!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : PlatformController = segue.destinationViewController as! PlatformController
        projectTitle.hiddenProjectVar = hiddenProjectVar
        
        let videoType : PlatformController = segue.destinationViewController as! PlatformController
        videoType.videoTypeVar = videoTypeVar
        
        let budget : PlatformController = segue.destinationViewController as! PlatformController
        budget.budgetVar = budgetVar
        
        
    }
}
