

import UIKit

class Change02ViewController: UIViewController {

    @IBOutlet weak var finalNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? Text02ViewController, segue.identifier == "ShowText02" {
            vc.userName = finalNameLabel.text!
            vc.delegate = self
        }
            
    }


}

extension Change02ViewController: Text02ViewControllerDelegate{
    func setRole(_ role: String) {
                finalNameLabel.text = role
            }
        }


