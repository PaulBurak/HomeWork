
import UIKit

class ViewController: UIViewController {
    
    let O = UIView()
    
    @IBOutlet weak var upB: UIButton!
    @IBOutlet weak var leftB: UIButton!
    @IBOutlet weak var rightB: UIButton!
    @IBOutlet weak var downB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let xCenter = view.frame.midX
        let yCenter = view.frame.midY
        
        
        O.backgroundColor = .systemBlue
        O.frame = CGRect(x: xCenter - 60 / 2, y: yCenter - 60 / 2, width: 60, height: 60)
        O.layer.cornerRadius = 30
        view.addSubview(O)
    }
    
    
    
    @IBAction func upB(_ sender: UIButton) {
        Up(O)
    }
    
    @IBAction func leftB(_ sender: UIButton) {
        Left(O)
    }
    
    
    @IBAction func rightB(_ sender: UIButton) {
        Right(O)
    }
    
    @IBAction func downB(_ sender: UIButton) {
        Down(O)
    }
    
    
    
    
    func Up(_ view: UIView) {
        let y = O.frame.maxY - 60
        if y >= CGFloat(10.0) {
            view.center.y -= 5
        }
    }
    
    
    func Down(_ view: UIView) {
        let y = O.frame.maxY - 60
        if y <= CGFloat(512.0) {
            view.center.y += 5
        }
    }
    
    
    func Left(_ view: UIView) {
        let x = O.frame.maxX - 60
        if x >= CGFloat(10.0) {
            view.center.x -= 5
        }
    }
    
    
    func Right(_ view: UIView) {
        let x = O.frame.maxX - 60
        if x <= CGFloat(315.0) {
            view.center.x += 5
        }
    }
    
}
