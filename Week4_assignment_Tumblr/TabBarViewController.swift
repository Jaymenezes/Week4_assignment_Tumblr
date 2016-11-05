//
//  TabBarViewController.swift
//  Week4_assignment_Tumblr
//
//  Created by user on 11/3/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    var fadeTransition: FadeTransition!

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Instatiating and gruping View Controllers
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        searchViewController = storyboard.instantiateViewController(withIdentifier: "SearchViewController")
        composeViewController = storyboard.instantiateViewController(withIdentifier: "ComposeViewController")
        accountViewController = storyboard.instantiateViewController(withIdentifier: "AccountViewController")
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].isSelected = true
        didPressTabBar(buttons[selectedIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func DidPressCompose(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//         composeViewController = storyboard.instantiateViewController(withIdentifier: "ComposeViewController")
//            addChildViewController(composeViewController)
//        composeViewController.view.frame = contentView.bounds
//        contentView.addSubview(composeViewController.view)
//        composeViewController.didMove(toParentViewController: self)
//        
       
        

        
    }
    
        @IBAction func didPressTabBar(_ sender: UIButton) {
            // Dismissing the old selected button on the Tab Bar
            let previousIndex = selectedIndex
            buttons[previousIndex].isSelected = false
            //Removing View Controller previously accessed
            let previousVC = viewControllers[previousIndex]
            previousVC.willMove(toParentViewController: nil)
            previousVC.view.removeFromSuperview()
            previousVC.removeFromParentViewController()
            
            //dimiss composeViewController
            composeViewController.willMove(toParentViewController: nil)
            composeViewController.view.removeFromSuperview()
            composeViewController.removeFromParentViewController()
            
            //Setting up the selected button on the Tab bar
            selectedIndex = sender.tag
            sender.isSelected = true
            let vc = viewControllers[selectedIndex]
            addChildViewController(vc)
            vc.view.frame = contentView.bounds
            contentView.addSubview(vc.view)
            vc.didMove(toParentViewController: self)

    }
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   
        let destinationViewController = segue.destination
        
        
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        
        fadeTransition = FadeTransition()
        
        
        destinationViewController.transitioningDelegate = fadeTransition
        
        fadeTransition.duration = 1.0
        print("fadeIn called")
     }
    
    
}




