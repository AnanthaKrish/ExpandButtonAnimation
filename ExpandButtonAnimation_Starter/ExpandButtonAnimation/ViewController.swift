//
//  ViewController.swift
//  ExpandButtonAnimation
//
//  Created by Anantha Krishnan K G on 29/08/18.
//  Copyright © 2018 Ananth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: Properties (Public)
    
    // contraints variables
    @IBOutlet weak var mainButton: UIButtonX!
    @IBOutlet weak var secondButton: UIButtonX2!
    @IBOutlet weak var thirdButton: UIButtonX2!
    @IBOutlet weak var fourthButton: UIButtonX2!
    
    @IBOutlet weak var buttonLabel4: UILabelX!
    @IBOutlet weak var buttonLabel3: UILabelX!
    @IBOutlet weak var buttonLabel2: UILabelX!
    
    var expandAnimator:UIViewPropertyAnimator?
    var collapseAnimator:UIViewPropertyAnimator?
    
    
    
    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
    
        self.mainButton.imageView?.contentMode = .center
        self.mainButton.imageView?.clipsToBounds = false
    }

    /**
     Action for Main Button
     */
    @IBAction func mainButtonAction(_ sender: Any) {
        
        // Animate here
    }    
}

