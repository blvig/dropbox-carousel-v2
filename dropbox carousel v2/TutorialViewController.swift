//
//  TutorialViewController.swift
//  dropbox carousel v2
//
//  Created by Vig, Bonnie on 10/3/16.
//  Copyright © 2016 Vig, Bonnie. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {
    
    @IBOutlet weak var pageContol: UIScrollView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageContol.contentSize = CGSize(width: 1500, height: 667)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
