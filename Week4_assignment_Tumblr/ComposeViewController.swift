//
//  ComposeViewController.swift
//  Week4_assignment_Tumblr
//
//  Created by user on 11/4/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    var composeViewController: UIViewController!


    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
        composeViewController = storyboard.instantiateViewController(withIdentifier: "ComposeViewController")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressNeverMind(_ sender: UIButton) {
        //dimiss composeViewController
        dismiss(animated: true, completion: nil)
//        composeViewController.willMove(toParentViewController: nil)
//        composeViewController.view.removeFromSuperview()
//        composeViewController.removeFromParentViewController()
        
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
