//
//  PC.swift
//  Cryptogramme
//
//  Created by Jaafar Rammal on 1/27/18.
//  Copyright © 2018 Jaafar Rammal. All rights reserved.
//

import Foundation
import Cocoa

@IBDesignable

class PC: NSView{
    
    //Draw canvas on screen
    override func draw(_ rect: CGRect) {
        MacCryptoCanvas.drawMacScreenCanvas()
        
    }
    
}
