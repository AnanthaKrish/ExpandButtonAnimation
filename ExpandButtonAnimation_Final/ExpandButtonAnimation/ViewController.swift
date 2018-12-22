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
        
        self.secondButton.center = self.mainButton.center
        self.thirdButton.center = self.secondButton.center
        self.fourthButton.center = self.thirdButton.center
       
        self.thirdButton.alpha = 0
        self.fourthButton.alpha = 0
        
        self.buttonLabel4.alpha = 0
        self.buttonLabel3.alpha = 0
        self.buttonLabel2.alpha = 0
    }

    /**
     Action for Main Button
     */
    @IBAction func mainButtonAction(_ sender: Any) {
        
        if mainButton.imageView?.transform != .identity {
             //self.secondButton.alpha = 1
             animate(true)
        } else {
            animate(false)
        }
    }
    
     // MARK: Animators
    /**
     Creating Animators
     */
    func createAnimators () {
        self.expandAnimator = nil
        self.collapseAnimator = nil
        
        self.expandAnimator = UIViewPropertyAnimator(duration: 0.3, curve: .easeInOut, animations: {
            
            
            UIView.animate(withDuration: 0.3, delay: 0.4, options: .curveEaseInOut, animations: {
                
                self.thirdButton.alpha = 1
                
                self.thirdButton.transform = CGAffineTransform(translationX: -30, y: -140)
                self.fourthButton.transform = CGAffineTransform(translationX: -30, y: -140)
               self.buttonLabel3.center = CGPoint(x: self.thirdButton.center.x - 120, y: self.thirdButton.center.y - 140)
                UIView.animate(withDuration: 0.2,delay:0.3, animations: {
                     self.buttonLabel3.alpha = 1
                })
                
                UIView.animate(withDuration: 0.3, delay: 0.2, options: .curveEaseInOut, animations: {
                    self.fourthButton.alpha = 1
                    self.fourthButton.transform = CGAffineTransform(translationX: -30, y: -210)
                    self.buttonLabel4.center = CGPoint(x: self.fourthButton.center.x - 120, y: self.fourthButton.center.y - 210)
                    UIView.animate(withDuration: 0.2,delay:0.3, animations: {
                        self.buttonLabel4.alpha = 1
                    })
                })
            })
        })
        
        self.collapseAnimator = UIViewPropertyAnimator(duration: 0.7, curve: .easeInOut, animations: {
            
            
            UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut, animations: {
                
                self.fourthButton.transform = CGAffineTransform(translationX: -30, y: -140)
                self.buttonLabel4.alpha = 0
                self.fourthButton.alpha = 0
                
                UIView.animate(withDuration: 0.2, delay: 0.2, options: .curveEaseInOut, animations: {
                    self.thirdButton.alpha = 0
                    self.buttonLabel3.alpha = 0
                    self.thirdButton.transform = CGAffineTransform(translationX: -30, y: -70)
                    self.fourthButton.transform = CGAffineTransform(translationX: -30, y: -70)
                })
            })
        })
    }
    
    /**
     Animate Sub-buttons
     */
    func animate(_ isStart: Bool) {
        
       
        
            if isStart {
                
                createAnimators()
                UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut, animations: {
                    
                    self.secondButton.transform = CGAffineTransform(translationX: -30, y: -30)
                   
                    
                    
                    UIView.animate(withDuration: 0.7, delay: 0.1, options: .curveEaseInOut, animations: {
                        self.secondButton.transform = CGAffineTransform(translationX: -30, y: -70)
                        self.thirdButton.transform = CGAffineTransform(translationX: -30, y: -70)
                        self.fourthButton.transform = CGAffineTransform(translationX: -30, y: -70)
                        self.buttonLabel2.center = CGPoint(x: self.secondButton.center.x - 120, y: self.secondButton.center.y - 70)
                        UIView.animate(withDuration: 0.2,delay:0.3, animations: {
                            self.buttonLabel2.alpha = 1
                        })
                        
                        
                        self.expandAnimator?.startAnimation()
                    })
                })
            } else {
                
                UIView.animate(withDuration: 1.5, animations: {
                    
                    self.collapseAnimator?.startAnimation()
                    self.buttonLabel2.alpha = 0
                    UIView.animate(withDuration: 0.3, delay: 0, animations: {
                        
                        self.secondButton.transform = CGAffineTransform(translationX: -30, y: -30)
                        UIView.animate(withDuration: 0.5, delay: 0.1, animations: {
                            self.secondButton.transform = .identity
                        })
                    })
                })
                
            }
    }
}

