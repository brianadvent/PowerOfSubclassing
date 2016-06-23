//
//  ViewController.swift
//  Subclassing
//
//  Created by Training on 23/06/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var specialImageView1: SpecialImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        specialImageView1.borderColor = UIColor.blueColor().CGColor
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

