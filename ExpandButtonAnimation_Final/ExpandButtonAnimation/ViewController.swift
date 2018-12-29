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
    
    
    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        
        
        
        self.mainButton.imageView?.contentMode = .center
        self.mainButton.imageView?.clipsToBounds = false
        
        
        self.fourthButton.center = self.thirdButton.center
        self.thirdButton.center = self.secondButton.center
        self.secondButton.center = self.mainButton.center
        
        self.thirdButton.alpha = 0
        self.fourthButton.alpha = 0
        
        self.buttonLabel4.alpha = 0
        self.buttonLabel3.alpha = 0
        self.buttonLabel2.alpha = 0
        
        //self.buttonLabel2.translatesAutoresizingMaskIntoConstraints = false
        
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
    
    /**
     Animate Sub-buttons
     */
    func animate(_ isStart: Bool) {
        
        
        
        if isStart {
            
            
            UIViewPropertyAnimator(duration: 0.3, curve: .easeInOut, animations: {
                
                
                UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut, animations: {
                    
                    self.secondButton.transform = CGAffineTransform(translationX: -30, y: -30)
                    
                    
                    
                    UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseInOut, animations: {
                        self.secondButton.transform = CGAffineTransform(translationX: -30, y: -90)
                        UIView.animate(withDuration: 0.2,delay:0.2, animations: {
                            self.buttonLabel2.alpha = 1
                        })
                        
                        UIView.animate(withDuration: 0.3, delay: 0.2, options: .curveEaseInOut, animations: {
                            self.thirdButton.alpha = 1
                            self.thirdButton.transform = CGAffineTransform(translationX: 0, y: -90)
                            UIView.animate(withDuration: 0.2,delay:0.2, animations: {
                                self.buttonLabel3.alpha = 1
                            })
                            UIView.animate(withDuration: 0.3, delay: 0.2, options: .curveEaseInOut, animations: {
                                self.fourthButton.alpha = 1
                                self.fourthButton.transform = CGAffineTransform(translationX: 0, y: -90)
                                UIView.animate(withDuration: 0.2,delay:0.2, animations: {
                                    self.buttonLabel4.alpha = 1
                                })
                            })
                        })
                    })
                })
                
            }).startAnimation()
            
            
        } else {
            
            
            UIViewPropertyAnimator(duration: 0.3, curve: .easeInOut, animations: {
                
                
                UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseInOut, animations: {
                    
                    self.fourthButton.transform = .identity
                    self.buttonLabel4.alpha = 0
                    self.fourthButton.alpha = 0
                    
                    UIView.animate(withDuration: 0.3, delay: 0.2, options: .curveEaseInOut, animations: {
                        
                        
                        self.buttonLabel3.alpha = 0
                        self.thirdButton.transform = .identity
                        self.thirdButton.alpha = 0
                        
                        UIView.animate(withDuration: 0.3, delay: 0.2 , options: .curveEaseInOut, animations: {
                            
                            self.secondButton.transform = .identity
                            self.buttonLabel2.alpha = 0
                            
                        })
                        
                    })
                })
            }).startAnimation()
            
        }
    }
}

