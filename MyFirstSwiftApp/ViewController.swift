//
//  ViewController.swift
//  MyFirstSwiftApp
//
//  Created by MF839-008 on 5/18/16.
//  Copyright © 2016 SamsungSDS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToViewController (segue:UIStoryboardSegue) {
        print ("unwindToViewController");
        
    }

   /* @IBAction func OpenSecondScreen(sender: AnyObject) {
        let secondview=self.storyboard!.instantiateViewControllerWithIdentifier("secondview");
        secondview.modalTransitionStyle=UIModalTransitionStyle.PartialCurl;
        self.presentViewController(secondview, animated: true, completion: nil);
    }*/

}

