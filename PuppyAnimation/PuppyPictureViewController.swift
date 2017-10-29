//
//  PuppyViewController.swift
//  PuppyAnimation
//
//  Created by JIANG, DARREL [AG/1000] on 10/11/17.
//  Copyright © 2017 JIANG, DARREL [AG/1000]. All rights reserved.
//

import UIKit

class PuppyPictureViewController: UIViewController {
    var firstImage: UIImage!
    var secondImage: UIImage!
    
    var puppy: Puppy!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImage = UIImage.init(named: puppy.imageName)
        secondImage = UIImage.init(named: "puppyB")
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
