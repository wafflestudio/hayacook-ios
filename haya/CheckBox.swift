//
//  CheckBox.swift
//  haya
//
//  Created by 신지민 on 2016. 1. 9..
//  Copyright © 2016년 신지민. All rights reserved.
//

import UIKit

class CheckBox: UIButton {
    
    //images
    let checkedImage = UIImage(named: "Checkmark-24")
    //let unCheckedIamge
    
    
    
    //bool propetry
    var isChecked :Bool = false{
        didSet{
            if isChecked == true {
                self.setImage (checkedImage, forState : .Normal)
            }else{
                self.setImage (nil, forState: .Normal)
            }
        }
    }

    override func awakeFromNib() {
        //self.layer.borderWidth = 0.8
        //self.layer.borderColor = UIColor.grayColor().CGColor
        self.layer.backgroundColor = UIColor(white: 0.75 , alpha: 1).CGColor
        self.layer.cornerRadius = self.frame.height/2


        self.addTarget(self, action: "buttonClicked:", forControlEvents : UIControlEvents.TouchUpInside)
        self.isChecked = false
    }
    
    func buttonClicked(sender: UIButton) {
        
        if(sender == self){
            if isChecked == true{
                isChecked = false
            }else{
                isChecked = true
            }
        }
    }

}
