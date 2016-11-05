//
//  HomeViewController.swift
//  Week4_assignment_Tumblr
//
//  Created by user on 11/4/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    
    var fadeTransition: FadeTransition!

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
