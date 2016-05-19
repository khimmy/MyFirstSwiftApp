//
//  ViewController.swift
//  MyFirstSwiftApp
//
//  Created by MF839-008 on 5/18/16.
//  Copyright © 2016 SamsungSDS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var switchVal:Bool=false;
    @IBOutlet weak var emailTxtField: UITextField?;
    
    
    func notificationMethod (notification:NSNotification) {
        self.view.backgroundColor=UIColor.redColor();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector (notificationMethod(_:)), name: "Help!", object: nil);
    }

    @IBAction func OnSwitch (sender:AnyObject) {
        let updateSwitch = sender as! UISwitch
        
        if updateSwitch.on {
            switchVal=true;
        }
        else {
            switchVal=false;
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToViewController (segue:UIStoryboardSegue) {
        print ("unwindToViewController");
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let svc=segue.destinationViewController as? SecondViewController {
            svc.textFieldVal=(emailTxtField!.text!);
            svc.switchVal=switchVal;
        }
        
    }

   /* @IBAction func OpenSecondScreen(sender: AnyObject) {
        let secondview=self.storyboard!.instantiateViewControllerWithIdentifier("secondview");
        secondview.modalTransitionStyle=UIModalTransitionStyle.PartialCurl;
        self.presentViewController(secondview, animated: true, completion: nil);
    }*/

}

