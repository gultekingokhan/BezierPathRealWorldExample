//
//  ViewController.swift
//  BezierPathRealWorldExample
//
//  Created by Gokhan Gultekin on 11.11.2018.
//  Copyright © 2018 Gokhan. All rights reserved.
//

import UIKit
import GGShadowedView

class ViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var profileView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageView.layer.cornerRadius = profileImageView.frame.width/2
        profileImageView.layer.masksToBounds = true
        infoView.layer.cornerRadius = 24
        infoView.layer.masksToBounds = true
     
        profileView.dropShadow()
    }


}

extension UIView {
    
    func dropShadow() {
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: 0, height: 0);
        layer.shadowOpacity = 0.70
        layer.shadowRadius = 12
        layer.shadowColor = UIColor.lightGray.cgColor
    }
}
