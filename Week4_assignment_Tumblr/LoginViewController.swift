//
//  LoginViewController.swift
//  Week4_assignment_Tumblr
//
//  Created by user on 11/4/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var homeViewController: UIViewController!


    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidAppear(_ animated: Bool) {
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.becomeFirstResponder()

        
   
        

        
        
        if cancelButton.isHighlighted {
            cancelButton.backgroundColor = UIColor.cyan
            cancelButton.alpha = 0.5
        
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressCancel(_ sender: Any) {
        cancelButton.backgroundColor = UIColor.cyan
        cancelButton.alpha = 0.5
        emailTextField.resignFirstResponder()

        dismiss(animated: true, completion: nil)

        
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
