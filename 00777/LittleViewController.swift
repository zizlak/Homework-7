


import UIKit

protocol LittleControllerDelegate{
    func setColor(_ color: UIColor)
}

class LittleViewController: UIViewController {
    var color0: UIColor = .white{
        didSet { view.backgroundColor? = color0 }
    }
    
    
    var delegate: LittleControllerDelegate?
    
    
    
    @IBAction func button2(_ sender: Any) {
      delegate?.setColor(.green)
        
    }
    
    @IBAction func yello(_ sender: Any) {
              delegate?.setColor(.yellow)
    }
    
    
    @IBAction func purple(_ sender: Any) {
              delegate?.setColor(.purple)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
}

