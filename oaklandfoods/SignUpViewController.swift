//
//  SignUpViewController.swift
//  oaklandfoods
//
//  Created by HGPMAC39 on 8/3/18.
//  Copyright © 2018 HGPMAC39. All rights reserved.
//

import UIKit


class SignUpViewController: UIViewController {


    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var reenter: UITextField!
    
    @IBAction func loginBtn(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (user, Error) in
            
            if user != nil && self.password.text == self.reenter.text {
                
                
                
                print("user created")
                
                
                
            }
                
            else{
                
                print("error")
                
                let alert = UIAlertController(title: "Passwords do not match", message: nil, preferredStyle: .alert)
                
                let okButton = UIAlertAction(title: "ok", style: .default, handler: nil)
                
                alert.addAction(okButton)
                
                self.present(alert, animated: true,completion: nil)
                
            }
            
            
            
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
