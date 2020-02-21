

import UIKit
protocol Text02ViewControllerDelegate {
    func setRole(_ role: String)
}
class Text02ViewController: UIViewController {

    var userName = ""
    var delegate: Text02ViewControllerDelegate?
    
    @IBOutlet weak var roleTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roleTextfield.text = userName
    }
    
    @IBAction func chooseGreen(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.setRole("Green is chosen")
    }
    
    @IBAction func chooseBlue(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.setRole("Blue is chosen")
    }
    
    @IBAction func chooseRed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.setRole("Red is chosen")
    }
    
    
    
}
