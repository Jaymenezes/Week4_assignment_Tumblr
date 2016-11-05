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
    
    
    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var hiButton: UIButton!
    @IBOutlet weak var cameraButton: UIButton!
    
    var textButtonOriginalY: CGFloat!
    var photoButtonOriginalY: CGFloat!
    var quoteButtonOriginalY: CGFloat!
    var linkButtonOriginalY: CGFloat!
    var hiButtonOriginalY: CGFloat!
    var cameraButtonOriginalY: CGFloat!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textButtonOriginalY = textButton.frame.origin.y
        photoButtonOriginalY =  photoButton.frame.origin.y
        quoteButtonOriginalY = quoteButton.frame.origin.y
        linkButtonOriginalY = linkButton.frame.origin.y
        hiButtonOriginalY = hiButton.frame.origin.y
        cameraButtonOriginalY = cameraButton.frame.origin.y
        
        self.textButton.frame.origin.y = self.textButtonOriginalY + 600
        self.photoButton.frame.origin.y = self.photoButtonOriginalY + 600
        self.linkButton.frame.origin.y = self.linkButtonOriginalY + 600
        self.quoteButton.frame.origin.y = self.quoteButtonOriginalY + 600
        self.hiButton.frame.origin.y = self.hiButtonOriginalY + 600
        self.cameraButton.frame.origin.y = self.cameraButtonOriginalY + 600
        

        
        
        

        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

             UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseInOut, animations: {
                self.textButton.frame.origin.y = self.textButtonOriginalY

            })
              UIView.animate(withDuration: 0.5, delay: 0.4, options: .curveEaseInOut, animations: {
                self.photoButton.frame.origin.y = self.photoButtonOriginalY

              })
            UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseInOut, animations: {
                self.linkButton.frame.origin.y = self.linkButtonOriginalY
                
            })
            UIView.animate(withDuration: 0.5, delay: 0.2, options: .curveEaseInOut, animations: {
                self.quoteButton.frame.origin.y = self.quoteButtonOriginalY
                
            })
            UIView.animate(withDuration: 0.5, delay: 0.6, options: .curveEaseInOut, animations: {
                self.hiButton.frame.origin.y = self.hiButtonOriginalY
                
            })
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseInOut, animations: {
                self.cameraButton.frame.origin.y = self.cameraButtonOriginalY
                
            
        
        })


        
        print("viewAppeared")
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 0.5, delay: 0.7, options: .curveEaseInOut, animations: {
            self.textButton.frame.origin.y = self.textButtonOriginalY - 600
            
        })
        UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseInOut, animations: {
            self.photoButton.frame.origin.y = self.photoButtonOriginalY - 600
            
        })
        UIView.animate(withDuration: 0.5, delay: 0.2, options: .curveEaseInOut, animations: {
            self.linkButton.frame.origin.y = self.linkButtonOriginalY - 600
            
        })
        UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseInOut, animations: {
            self.quoteButton.frame.origin.y = self.quoteButtonOriginalY - 600
            
        })
        UIView.animate(withDuration: 0.5, delay: 0.4, options: .curveEaseInOut, animations: {
            self.hiButton.frame.origin.y = self.hiButtonOriginalY - 600
            
        })
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseInOut, animations: {
            self.cameraButton.frame.origin.y = self.cameraButtonOriginalY - 600
            
            
            
        })

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressNeverMind(_ sender: UIButton) {
        //dimiss composeViewController
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
