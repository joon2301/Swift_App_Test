//
//  RegisterViewController.swift
//  firebaseTest
//
//  Created by 이승준 on 2022/02/14.
//
import Firebase
import UIKit

class RegisterViewController : UIViewController, UIWindowSceneDelegate{
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var returnButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func returnButton(_ sender:Any){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func registerButton(_ sender:Any){
        Auth.auth().createUser(withEmail: emailField.text!, password: passField.text!
                ) { (user, error) in
                    if user !=  nil{
                        print("register success")
                    }
                    else{

                        print("register failed")
                    }
        }
    }

}

