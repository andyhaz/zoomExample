//
//  ViewController.swift
//  zoom
//
//  Created by andrew hazlett on 2/8/21.
//

import Cocoa

class ViewController: NSViewController {

    
    @IBOutlet weak var mySlider: NSScrollView!
    @IBOutlet weak var zoomOutlet: NSSlider!
    
    @IBOutlet weak var myview: myView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySlider.allowsMagnification = true
        // Do any additional setup after loading the view.
        mySlider.setMagnification(CGFloat(0.5), centeredAt: NSPoint(x:mySlider.bounds.size.width,y: mySlider.bounds.size.height))
        myview.drawImage()
    }

    @IBAction func zoomAction(_ sender: Any) {
        let zoom =  zoomOutlet.floatValue
        //myview.setViewSize(Double(zoom))
     //   mySlider.magnification = CGFloat(zoom)
        mySlider.setMagnification(CGFloat(zoom), centeredAt: NSPoint(x:mySlider.bounds.size.width,y: mySlider.bounds.size.height))
        myview.drawImage()
        print(myview.bounds.size)
        
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

