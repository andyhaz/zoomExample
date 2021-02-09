//
//  myView.swift
//  zoom
//
//  Created by andrew hazlett on 2/8/21.
//

import Cocoa
import AppKit

class myView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
        // --set bg color --
                NSColor.black.setFill()
               drawImage()
        // -- update draw
                __NSRectFill(dirtyRect)
        
    }//end
    
    func drawImage() {
        //-- draw display image
        let myLayer = CALayer()
        
        let myImage = NSImage(named: "Business_Card.jpg")
        print(myImage?.size.width as Any,myImage?.size.height as Any)
   
        myLayer.contents = myImage// NSImage(named: "Business_Card.jpg")
        myLayer.contentsGravity = CALayerContentsGravity.resizeAspect
        myLayer.frame = self.bounds
        self.layer?.addSublayer(myLayer)
        self.needsDisplay = true
     //   print("layer",myLayer.bounds.size as Any)
    }
}
