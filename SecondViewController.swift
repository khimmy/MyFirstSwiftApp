//
//  SecondViewController.swift
//  MyFirstSwiftApp
//
//  Created by MF839-008 on 5/18/16.
//  Copyright © 2016 SamsungSDS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

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

        // Do any additional setup after loading the view.
        
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
