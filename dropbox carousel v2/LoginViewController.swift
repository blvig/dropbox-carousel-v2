//
//  LoginViewController.swift
//  dropbox carousel v2
//
//  Created by Vig, Bonnie on 9/29/16.
//  Copyright © 2016 Vig, Bonnie. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var loginText: UIImageView!
    @IBOutlet weak var loginForm: UIImageView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var buttonSignIn: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var initialY: CGFloat!
    var offset: CGFloat!
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        scrollView.contentSize = scrollView.frame.size
        
        scrollView.contentInset.bottom = 100
        
        //initialY = fieldParentView.frame.origin.y
        offset = -80
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
    NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
        // Any code you put in here will be called when the keyboard is about to display
        
        self.fieldParentView.frame.origin.y = self.initialY + self.offset
        
        self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
        
        self.scrollView.contentOffset.y = self.scrollView.contentInset.bottom

        }
        
    NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
        
        self.fieldParentView.frame.origin.y = self.initialY
        
        self.buttonParentView.frame.origin.y = self.buttonInitialY
        
        // Any code you put in here will be called when the keyboard is about to hide
        }

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func didTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func didTapSignIn(_ sender: AnyObject) {
        
            // Start animating the activity indicator
            activityIndicator.startAnimating()
            // Set the Button state to "Selected"
            buttonSignIn.isSelected = true
        
            // If both the email and password fields match what we are looking for...
            if emailField.text == "Text we are looking for" && passwordField.text == "Other text we are looking for" {
                // Delay for 2 second.
                delay(2, closure: { () -> () in
                    // Stop animating the activity indicator.
                    self.activityIndicator.stopAnimating()
                    // Set the button state back to default, "Not Selected".
                    self.buttonSignIn.isSelected = false
                    // perform the Segue to the next screen.
                    self.performSegue(withIdentifier: "signIn", sender: nil)
                })
                // Otherwise, email or password are incorrect so...
            } else {
                // Delay for 2 second
                delay(2, closure: { () -> () in
                    // Stop animating the activity indicator.
                    self.activityIndicator.stopAnimating()
                    // Set the button state back to default, "Not Selected".
                    self.buttonSignIn.isSelected = false
                    // Create and Show UIAlertController...see guide, Using UIAlertController
                })
        
        //user enters email and password
        //let email = emailField.text
        //let password = passwordField.text
        
        //if email == "" || password == "" {

            //presentAlert()
            
        //} else {
            //show activity indicator (delayed)
            
            //run(after: 2.0)
            //self.activityIndicator.startAnimating()
            
            //performSegue(withIdentifier: "signIn", sender: nil)
  
        }
    }

    func presentAlert(){
    
        // present alert
        let alertController = UIAlertController(title: "Error", message: "Message", preferredStyle: .alert)
        
        // create a cancel action
        let cancelAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
            // handle cancel response here. Doing nothing will dismiss the view.
        }
        // add the cancel action to the alertController
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
        }
    }
    
    // do not try to understand this arcane magik
    func run(after wait: TimeInterval, closure: @escaping () -> (Void) = {}) {
        let queue = DispatchQueue.main
        queue.asyncAfter(deadline: DispatchTime.now() + wait, execute: closure)
    }

}
