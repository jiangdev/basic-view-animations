//
//  PlayPuppyViewController.swift
//  PuppyAnimation
//
//  Created by JIANG, DARREL [AG/1000] on 10/11/17.
//  Copyright © 2017 JIANG, DARREL [AG/1000]. All rights reserved.
//

import UIKit

class PlayPuppyViewController: UIViewController {
    let firstImageView = UIImageView.init(image:UIImage.init(named: "puppy1.jpg"))
    let secondImageView = UIImageView.init(image:UIImage.init(named: "puppy12.jpg"))
    var puppySwitch: Bool = false
    
    @IBOutlet weak var movePuppyButton: UIButton!
    
    @IBOutlet weak var rolloverPuppyButton: UIButton!
    
    @IBOutlet weak var springPuppyButton: UIButton!
    
    @IBOutlet weak var transformPuppyView: UIView!
    
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
    
    @IBAction func movePuppyButtonAction(_ sender: UIButton) {
        UIView.animate(withDuration: 2, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.movePuppyButton.center.x += self.view.bounds.width - self.movePuppyButton.frame.width
        }, completion: nil)
        
    }
    
    @IBAction func rolloverPuppyButtonAction(_ sender: UIButton) {
        UIView.animate(withDuration: 2, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.rolloverPuppyButton.center.x += self.view.bounds.width - self.rolloverPuppyButton.frame.width
            self.rolloverPuppyButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 1.5)
        }, completion: nil)
    }
    
    @IBAction func springPuppyButtonAction(_ sender: UIButton) {
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping:0.1, initialSpringVelocity: 2, options: [.repeat, .autoreverse], animations: {
            self.springPuppyButton.center.x += self.view.bounds.width - self.springPuppyButton.frame.width
        }, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        firstImageView.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
        secondImageView.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
        
        transformPuppyView.addSubview(firstImageView)
        transformPuppyView.addSubview(secondImageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
