//
//  TrendingViewController.swift
//  Week4_assignment_Tumblr
//
//  Created by user on 11/4/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    @IBOutlet weak var trendingScroll: UIScrollView!
    @IBOutlet weak var trendingImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        trendingScroll.contentSize = trendingImage.frame.size

        // Do any additional setup after loading the view.
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
