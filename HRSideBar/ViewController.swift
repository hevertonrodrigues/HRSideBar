//
//  ViewController.swift
//  HRSideBar
//
//  Created by Heverton Rodrigues on 23/09/14.
//  Copyright (c) 2014 Heverton Rodrigues. All rights reserved.
//

import UIKit

class ViewController: HRSideBarViewController
{
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func openMenu(sender: UIButton)
    {
        println( "open" )
        
        self.toggleeMenu()
    }
    

    
}

