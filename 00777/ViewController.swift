

import UIKit

class ViewController: UIViewController {
    
    private var littleVC: LittleViewController?
    var color: UIColor = .white
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? LittleViewController, segue.identifier == "ShowLittle"{
            littleVC = vc
            vc.delegate = self
        }
    }
//    @IBAction func button1(_ sender: Any) {
//    littleVC?.color0 = .green
//    updateFinalColor()
//    }
    @IBAction func green(_ sender: Any) {
        littleVC?.color0 = .green
        updateFinalColor()
    }
    
    @IBAction func yello(_ sender: Any) {
        littleVC?.color0 = .yellow
        updateFinalColor()
    }
    
    @IBAction func purple(_ sender: Any) {
        littleVC?.color0 = .purple
        updateFinalColor()
    }
    
    func updateFinalColor(){
        view.backgroundColor = color
    }
}

extension ViewController: LittleControllerDelegate {
    func setColor(_ color: UIColor) {
        self.color = color
        updateFinalColor()
    }
}
