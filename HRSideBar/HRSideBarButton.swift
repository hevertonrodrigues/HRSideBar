//
//  HRSideBarButton.swift
//  HRSideBar
//
//  Created by Heverton Rodrigues on 23/09/14.
//  Copyright (c) 2014 Heverton Rodrigues. All rights reserved.
//

import Foundation
import UIKit

class HRSideMenuButton :UIButton
{
    
    init( title :String, imageNamed :String? = nil )
    {
        super.init(frame: CGRectMake(0, 0, 0, 0))
        self.setTitle( title, forState: UIControlState.Normal )
        self.addTarget( self, action: "openDashboard", forControlEvents: UIControlEvents.TouchUpInside )
        self.backgroundColor = UIColor( rgba: "#929292" )
        if imageNamed != nil
        {
            self.setImage( UIImage( named: imageNamed! ), forState: UIControlState.Normal )
        }
    }
    
    private func openDashboard( vc :UIViewController )
    {
        vc.performSegueWithIdentifier( "DashboardSegue", sender: vc )
    }
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}