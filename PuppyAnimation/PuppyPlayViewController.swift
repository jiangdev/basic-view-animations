import UIKit

class PuppyPlayViewController: UIViewController {
    var firstImageView: UIImageView!
    var secondImageView: UIImageView!
    var puppy: Puppy!
    var puppySwitch: Bool = true
    
    @IBOutlet weak var movePuppyButton: UIButton!
    @IBOutlet weak var rolloverPuppyButton: UIButton!
    @IBOutlet weak var springPuppyButton: UIButton!
    @IBOutlet weak var transformPuppyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImageView = UIImageView.init(image:UIImage.init(named: puppy.imageName))
        secondImageView = UIImageView.init(image:UIImage.init(named: "fry"))
        
        movePuppyButton.setBackgroundImage(UIImage.init(named: puppy.imageName), for: .normal)
        rolloverPuppyButton.setBackgroundImage(UIImage.init(named: puppy.imageName), for: .normal)
        springPuppyButton.setBackgroundImage(UIImage.init(named: puppy.imageName), for: .normal)
        
    }

    @IBAction func movePuppyButtonAction(_ sender: UIButton) {
        UIView.animate(withDuration: 2, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.movePuppyButton.center.x += self.view.bounds.width - self.movePuppyButton.frame.width
        }, completion: nil)
        
    }
    
    @IBAction func rolloverPuppyButtonAction(_ sender: UIButton) {
        UIView.animate(withDuration: 2, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.rolloverPuppyButton.center.x += self.view.bounds.width - self.rolloverPuppyButton.frame.width
            self.rolloverPuppyButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }, completion: nil)
    }
    
    @IBAction func springPuppyButtonAction(_ sender: UIButton) {
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping:0.1, initialSpringVelocity: 2, options: [.repeat, .autoreverse], animations: {
            self.springPuppyButton.center.x += self.view.bounds.width - self.springPuppyButton.frame.width
        }, completion: nil)
    }
    
    @IBAction func transformPuppyButtonAction(_ sender: UIButton) {
        if (self.puppySwitch) {
            UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
                self.firstImageView.alpha = 0
                self.secondImageView.alpha = 1
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
                self.firstImageView.alpha = 1
                self.secondImageView.alpha = 0
            }, completion: nil)
        }
        self.puppySwitch = !self.puppySwitch
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        firstImageView.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
        secondImageView.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
        
        transformPuppyButton.addSubview(secondImageView)
        transformPuppyButton.addSubview(firstImageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
