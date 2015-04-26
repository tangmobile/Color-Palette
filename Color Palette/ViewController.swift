//
//  ViewController.swift
//  Color Palette
//
//  Created by Lee Tang on 4/25/15.
//  Copyright (c) 2015 com.Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorPaletteView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    @IBOutlet weak var rValue: UILabel!
    @IBOutlet weak var gValue: UILabel!
    @IBOutlet weak var bValue: UILabel!
    
    @IBOutlet weak var shareButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func colorPaletteMix(sender: UISlider) {
        var rfloat = self.redSlider.value
        var gfloat = self.greenSlider.value
        var bfloat = self.blueSlider.value
        
        let r: CGFloat = CGFloat(rfloat)
        let g: CGFloat = CGFloat(gfloat)
        let b: CGFloat = CGFloat(bfloat)
        
        var R = Int(r * 255)
        var G = Int(g * 255)
        var B = Int(b * 255)
        
        colorPaletteView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        rValue.text = "\(R)"
        gValue.text = "\(G)"
        bValue.text = "\(B)"


    }
    
    @IBAction func shareAction(sender: AnyObject) {
        let sharedRGBValues = "Color Palette produced the following color - R:\(rValue.text!), G:\(gValue.text!), B:\(bValue.text!)"
        let shareActivityItems = UIActivityViewController(activityItems: [sharedRGBValues], applicationActivities: nil)
        self.presentViewController(shareActivityItems, animated: true, completion: nil)
    }
    
    
}

