//
//  SpecialImageView.swift
//  Subclassing
//
//  Created by Training on 23/06/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class SpecialImageView: UIImageView {

    
    var borderColor:CGColor? {
        
        get {
            return self.layer.borderColor
        }
        
        set{
            self.layer.borderColor = newValue
            self.layer.borderWidth = 3
        }
    
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tapGestureRecgonizer = UITapGestureRecognizer(target: self, action: #selector(SpecialImageView.jumpArround))
        self.addGestureRecognizer(tapGestureRecgonizer)
        
    }
    
    func jumpArround() {
        
        UIView.animateWithDuration(0.5, animations: { 
            self.transform = CGAffineTransformMakeScale(1.5, 1.5)
        }) { (success:Bool) in
                UIView.animateWithDuration(0.5, animations: { 
                    self.transform = CGAffineTransformIdentity
                })
        }
        
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
