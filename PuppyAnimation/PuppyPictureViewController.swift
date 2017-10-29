import UIKit

class PuppyPictureViewController: UIViewController {
    var firstImage: UIImage!
    var secondImage: UIImage!
    
    var puppy: Puppy!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImage = UIImage.init(named: puppy.imageName)
        secondImage = UIImage.init(named: "fry")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let firstImageView = UIImageView.init(image: firstImage)
        firstImageView.frame = view.frame
        view.addSubview(firstImageView)
        
        let secondImageView = UIImageView.init(image: secondImage)
        secondImageView.frame = view.frame
        secondImageView.alpha = 0.0
        view.addSubview(secondImageView)
        
        UIView.animate(withDuration: 2, delay: 2, options: [.curveEaseOut], animations: {
            secondImageView.alpha = 1.0
            firstImageView.alpha = 0.0
        }, completion: nil)
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.puppyPlaySegue,
            let destination = segue.destination as? PuppyPlayViewController {
            destination.navigationItem.title = "Play with \(puppy.name)"
            destination.puppy = puppy 
        }
    }
}





