//
//  LogInViewController.swift
//  oaklandfoods
//
//  Created by HGPMAC39 on 8/3/18.
//  Copyright © 2018 HGPMAC39. All rights reserved.
//

import UIKit
import FirebaseAuth



class LogInViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login_L(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
            
            if user != nil{
                
                self.performSegue(withIdentifier: "login", sender: self)
                
                print("user logged in")
                
                
                
            }else{
                
           
                
                print("error")
                
                let alert = UIAlertController(title: "Email or password is incorrect", message: nil, preferredStyle: .alert)
                
                let okButton = UIAlertAction(title: "ok", style: .default, handler: nil)
                
                alert.addAction(okButton)
                
                self.present(alert, animated: true,completion: nil)
                
            }
            
            
            
            
            
        }
        
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
