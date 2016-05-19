//
//  ThirdViewController.swift
//  MyFirstSwiftApp
//
//  Created by MF839-008 on 5/19/16.
//  Copyright © 2016 SamsungSDS. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print ("ThirdViewController Loaded");
        
        let appDelegate=UIApplication.sharedApplication().delegate as! AppDelegate // OUR OWN APPLICATION OBJECT
        
        myLabel.text=appDelegate.myString;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func SendMessageClicked(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("Help!", object: nil);
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
