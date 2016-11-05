//
//  SearchViewController.swift
//  Week4_assignment_Tumblr
//
//  Created by user on 11/4/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    var searchViewController: UIViewController!

    @IBOutlet weak var searchFeed: UIImageView!
    @IBOutlet weak var animationImageSequence: UIImageView!
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        searchFeed.alpha = 0
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        animatedImage = UIImage.animatedImage(with: images, duration: 0.7)
        
        animationImageSequence.image = animatedImage
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        UIView.animate(withDuration: 0.3, delay: 1.6, options: [], animations:{
            
            self.animationImageSequence.alpha = 0
        }){ (Bool) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: [], animations:{
                self.searchFeed.alpha = 1
                

                
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        searchViewController = storyboard.instantiateViewController(withIdentifier: "SearchViewController")

        
      

        

        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        searchViewController.willMove(toParentViewController: nil)
        searchViewController.view.removeFromSuperview()
        searchViewController.removeFromParentViewController()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
