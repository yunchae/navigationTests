//
//  BlueViewController.swift
//  NavigationTest
//
//  Created by SDS-019 on 2017. 4. 26..
//  Copyright © 2017년 SDS-019. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet var sendingTextField: UITextField!
    
    
    @IBAction func sendText(_ sender: Any) {
        self.performSegue(withIdentifier: "goRed", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            self.view.backgroundColor = appDelegate.bgColor
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let vc = segue.destination as? RedViewController{
            vc.receivedValue = sendingTextField.text
        }
    }


}
