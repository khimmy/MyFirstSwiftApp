//
//  SecondViewController.swift
//  MyFirstSwiftApp
//
//  Created by MF839-008 on 5/18/16.
//  Copyright © 2016 SamsungSDS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var switchVal:Bool=false;
    var textFieldVal:String="";

    @IBOutlet weak var txtSwitchState: UILabel!
    @IBOutlet weak var txtFieldValue: UILabel!
    
    @IBAction func NextWithSegue(sender: AnyObject) {
        performSegueWithIdentifier("thirdsegue", sender: self);
    }
    @IBAction func NextClicked(sender: AnyObject) {
        print ("NextClicked from SecondViewController");
        if let svc =
            self.storyboard?.instantiateViewControllerWithIdentifier("etcview") {
            self.navigationController?.pushViewController(svc, animated: true);
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print ("SecondViewController.viewDidLoad");

        // Do any additional setup after loading the view.
        if switchVal {
            txtSwitchState.text="On"
        }
        else {
            txtSwitchState.text="Off"
        }
        
        txtFieldValue.text=textFieldVal;
        
    }
    
    override func viewWillAppear(animated: Bool) {
        print ("SecondViewController.viewWillAppear")
    }
    override func viewDidAppear(animated: Bool) {
        print ("SecondViewController.viewDidAppear");
    }
    override func viewWillDisappear(animated: Bool) {
        print ("SecondViewController.viewWillDisappear");
    }
    override func viewDidDisappear(animated: Bool) {
        print ("SecondViewController.viewDidDisappear");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

    /*@IBAction func BackToMainScreenTouhed(sender: AnyObject) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil);
        /*let firstview=self.storyboard!.
        firstview.modalTransitionStyle=UIModalTransitionStyle.PartialCurl;
        self.presentViewController(firstview, animated: true, completion: nil);*/
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
