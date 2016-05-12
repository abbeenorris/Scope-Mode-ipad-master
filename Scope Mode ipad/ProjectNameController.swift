import UIKit

class ProjectNameController: UIViewController {
    @IBOutlet weak var projectTextfield: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : VideoTypeController = segue.destinationViewController as! VideoTypeController
        projectTitle.hiddenProjectVar = projectTextfield.text!
        
    }

}

