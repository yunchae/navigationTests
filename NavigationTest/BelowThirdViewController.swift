//
//  BelowThirdViewController.swift
//  NavigationTest
//
//  Created by SDS-019 on 2017. 4. 26..
//  Copyright © 2017년 SDS-019. All rights reserved.
//

import UIKit

class BelowThirdViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    
    @IBAction func doneClick(_ sender: Any) {
        /*
        if let myDelegate = delegate{
            if let text = textField.text{
                myDelegate.sendText(newText: text)
            }
        }*/
        if let myDelegate = delegate, let myText = textField.text{
            myDelegate.sendText(newText: myText)
        }
        if let navicontorller = self.navigationController{
            navicontorller.popViewController(animated: true)
        }
        /*
        self.navigationController?.popViewController(animated: true)
        */
    }
    
    var delegate: BelowSecondViewController?=nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
