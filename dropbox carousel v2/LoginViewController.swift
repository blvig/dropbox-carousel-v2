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
    
    var initialY: CGFloat!
    var offset: CGFloat!
    
    
    @IBOutlet weak var buttonParentView: UIView!
    
    var initialbuttonParentViewY: CGFloat!
    var offsetbuttonParentView: CGFloat!
    
    @IBOutlet weak var buttonSignIn: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        // Set the scroll view content size
        scrollView.contentSize = scrollView.frame.size
        
        // Set the content insets
        scrollView.contentInset.bottom = 100

        // Do any additional setup after loading the view.
        
        initialY = fieldParentView.frame.origin.y
        offset = -50
        
        initialY = buttonParentView.frame.origin.y
        offset = -120
        
        fieldParentView.frame.origin.y = initialY + offset
        
        buttonParentView.frame.origin.y = initialbuttonParentViewY + offsetbuttonParentView
        
        
    
    NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
        // Any code you put in here will be called when the keyboard is about to display
        }
        
    NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
        
        self.fieldParentView.frame.origin.y = self.initialY
        self.buttonParentView.frame.origin.y = self.initialY
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
