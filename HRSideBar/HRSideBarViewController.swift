//
//  HRSideBarViewController.swift
//  HRSideBar
//
//  Created by Heverton Rodrigues on 23/09/14.
//  Copyright (c) 2014 Heverton Rodrigues. All rights reserved.
//

import Foundation
import UIKit

class HRSideBarViewController: UIViewController
{
    let sidebar :HRSideBarView = HRSideBarView()
    private var itemSize :Int = 50
    private var elements :Array<UIButton> = []
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.create()
    }
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear( animated )
        self.view.superview?.addSubview(sidebar)
    }
    
    private func create()
    {
        self.sidebar.setSize(width: 280, height: Double( self.view.frame.height ))
    }
    
    private func mount()
    {
        for button in elements
        {
            sidebar.addSubview(button)
        }
    }
    
    private func defaultBar()
    {
        let b1 :HRSideMenuButton = HRSideMenuButton( title: "Dashboard" )
        b1.addTarget( self, action: "openDashboard", forControlEvents: UIControlEvents.TouchUpInside )


        let b2 :HRSideMenuButton = HRSideMenuButton( title: "Be a Pro" )
        b2.addTarget( self, action: "openDashboard", forControlEvents: UIControlEvents.TouchUpInside )


        let b3 :HRSideMenuButton = HRSideMenuButton( title: "Logout" )
        b3.addTarget( self, action: "logout", forControlEvents: UIControlEvents.TouchUpInside )
    }
    
    
    
    func getPosition() -> CGRect
    {
        println( elements.count )
        return CGRectMake( 0, ( ( CGFloat(itemSize) + 5 ) * CGFloat(elements.count ) ) + 64, self.view.frame.size.width, CGFloat(itemSize) )
    }
    
    
    
//    func defaultMenu( vc :UIViewController )
//    {
//        let b1 :HRSideMenuButton = HRSideMenuButton( title: "Dashboard", vc: vc )
//        b1.addTarget( vc, action: "openDashboard", forControlEvents: UIControlEvents.TouchUpInside )
//        b1.addToMenu( self )
//        
//        let b2 :HRSideMenuButton = HRSideMenuButton( title: "Be a Pro", vc: vc )
//        b2.addTarget( vc, action: "openDashboard", forControlEvents: UIControlEvents.TouchUpInside )
//        b2.addToMenu( self )
//        
//        let b3 :HRSideMenuButton = HRSideMenuButton( title: "Logout", vc: vc )
//        b3.addTarget( vc, action: "logout", forControlEvents: UIControlEvents.TouchUpInside )
//        b3.addToMenu( self )
//    }
    
    
    
    
    
    
    
    
    
    
    func togglee()
    {
        UIView.animateWithDuration( 0.5, delay:0, options: .CurveEaseInOut, animations:
            {
                if ( self.view.frame.origin.x > 0 )
                {
                    self.view.frame = CGRectMake( 0, 0, self.view.frame.width, self.view.frame.height )
                    self.sidebar.close()
                } else {
                    self.view.frame = CGRectMake( 280, 0, self.view.frame.width, self.view.frame.height )
                    self.sidebar.open()
                }
            }, completion: nil )
    }

    
    
    
    
    
    override func didReceiveMemoryWarning(){super.didReceiveMemoryWarning();println(".::CRASH::. -- HRSideBarViewController")}
}