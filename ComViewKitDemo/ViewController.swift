//
//  ViewController.swift
//  ComViewKitDemo
//
//  Created by Bherly Novrandy on 3/23/18.
//  Copyright © 2018 Bherly Novrandy. All rights reserved.
//

import UIKit
import BNComViewKit

class ViewController: UIViewController, BNPopUpViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        let popUpView = BNPopUpView(frame: self.view.bounds)
        popUpView.delegate = self
        popUpView.setCloseButtonTitle(title: "Close")
        popUpView.setDescriptionLabel(title: "Some description that too long to display, Well the label should autoresize and fit the content :)")

        popUpView.setDescriptionLabelColor(color: UIColor.black)
        popUpView.setCloseButtonTitleColor(color: UIColor.black)
        
        popUpView.setImageView(link: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Swift_logo.svg/533px-Swift_logo.svg.png")
        view.addSubview(popUpView)
    }
    
    func popUpViewWillDismiss() {
        
    }
}

