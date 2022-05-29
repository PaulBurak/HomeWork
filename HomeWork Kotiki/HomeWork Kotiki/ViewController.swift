
//----------------------"тапалка" для котиков----------------------
import UIKit

class ViewController: UIViewController {
    
    let BALL = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BALL.layer.cornerRadius = 40
        BALL.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let xCenter = view.frame.midX
        let yCenter = view.frame.midY
        BALL.backgroundColor = .gray
        BALL.frame = CGRect (x: xCenter - BALL.frame.width / 2, y: yCenter - BALL.frame.height / 2, width: BALL.frame.width, height: BALL.frame.height)
        
        view.addSubview(BALL)
        BALL.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTap)))
    }
    
    @objc func didTap() {
        randomMesto()
        randomCvet()
    }
    
    func randomMesto() {
        self.BALL.frame = CGRect(x: .random(in: 0..<view.frame.maxX - BALL.frame.width), y: .random(in: 0..<view.frame.maxY - BALL.frame.height), width: BALL.frame.width, height: BALL.frame.width)
    }
    
    func randomCvet() {
        let A = CGFloat.random(in: 0...1)
        let B = CGFloat.random(in: 0...1)
        let C = CGFloat.random(in: 0...1)
        let randomCvet = UIColor(red: A, green: B, blue: C, alpha: 1)
        BALL.backgroundColor = randomCvet
    }
}
