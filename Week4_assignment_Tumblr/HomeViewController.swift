//
//  HomeViewController.swift
//  Week4_assignment_Tumblr
//
//  Created by user on 11/4/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeSpinner: UIImageView!
    var fadeTransition: FadeTransition!

    
    @IBOutlet weak var homeScrollView: UIScrollView!

    @IBOutlet weak var homeImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScrollView.contentSize = CGSize(width: 375, height: 630)
        
//
//        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: { () -> Void in
//            self.homeSpinner.transform = self.homeSpinner.transform.rotated(by: CGFloat(M_PI_2))
//        }) { (finished) -> Void in
//      self.rotateView(homeSpinner)
//        }
        
        UIView.animate(withDuration: 5, delay: 0, options: [.repeat, .curveLinear], animations:{
            self.homeSpinner.transform = CGAffineTransform(rotationAngle: CGFloat(180 * M_PI / 180))

            
        })
        
    

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationViewController = segue.destination
        
        
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        
        fadeTransition = FadeTransition()
        
        
        destinationViewController.transitioningDelegate = fadeTransition
        
        fadeTransition.duration = 1.0
        print("fadeIn called")
    }

}


