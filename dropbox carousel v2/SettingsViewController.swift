//
//  SettingsViewController.swift
//  dropbox carousel v2
//
//  Created by Vig, Bonnie on 10/3/16.
//  Copyright © 2016 Vig, Bonnie. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
   
    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var settingsImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = settingsImageView.frame.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapClose(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
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
