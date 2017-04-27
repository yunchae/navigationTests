//
//  RedViewController.swift
//  NavigationTest
//
//  Created by SDS-019 on 2017. 4. 26..
//  Copyright © 2017년 SDS-019. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    @IBOutlet var receivedLabel: UILabel!
    
    var receivedValue:String? = nil
    
    @IBAction func changeBackgroundColor(_ sender: Any) {
        NotificationCenter.default.post(name:NSNotification.Name.init(rawValue: "CHANGE_COLOR"), object:nil, userInfo:nil)        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let str = receivedValue{
            receivedLabel.text = str
        }
        
        if let appdelegate = UIApplication.shared.delegate as? AppDelegate{
            receivedLabel.text = appdelegate.myName
        }
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
