//
//  HRSideBarView.swift
//  HRSideBar
//
//  Created by Heverton Rodrigues on 23/09/14.
//  Copyright (c) 2014 Heverton Rodrigues. All rights reserved.
//

import Foundation
import UIKit

class HRSideBarView :UIView
{
    private var width :Double = Double()
    private var height :Double = Double()
    
    override init()
    {
        super.init()
        self.backgroundColor = UIColor( rgba: "#AEAEAE" )
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setSize( width w :Double, height h :Double )
    {
        self.width = w
        self.height = h
        self.frame = CGRectMake( CGFloat( -w ), 0, CGFloat( w ) , CGFloat( h ) )
    }
    
    func open()
    {
        self.frame = CGRectMake( 0, 0, CGFloat( self.width ) , self.frame.size.height )
    }
    
    func close()
    {
        self.frame = CGRectMake( CGFloat( -self.width ), 0, CGFloat( self.width ) , self.frame.size.height )
    }
}