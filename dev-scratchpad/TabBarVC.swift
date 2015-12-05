//
//  TabBarVC.swift
//  dev-scratchpad
//
//  Created by Jonathan Wood on 12/4/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit
import SWRevealViewController

class TabBarVC: UITabBarController {

    @IBOutlet weak var OpenBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        OpenBtn.target = self.revealViewController()
        OpenBtn.action = Selector("rightRevealToggle:")
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
    }

}
