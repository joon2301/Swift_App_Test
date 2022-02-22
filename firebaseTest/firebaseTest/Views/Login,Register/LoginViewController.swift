//
//  LoginViewController.swift
//  firebaseTest
//
//  Created by 이승준 on 2022/02/14.
//
import Firebase
import UIKit

class LoginViewController : UIViewController, UIWindowSceneDelegate{
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let user = Auth.auth().currentUser {
            loginButton.setTitle("이미 로그인 된 상태입니다.", for: .normal)
            
            guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "MainID") else { return }
              self.navigationController?.pushViewController(homeVC, animated: true)
        }

    }
    
    @IBAction func loginButton(_ sender:Any){
        Auth.auth().signIn(withEmail: emailField.text!, password: passField.text!) { (user,error) in
            if user != nil {
                print("Success")
                guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "MainID") else { return }
                  self.navigationController?.pushViewController(homeVC, animated: true)
            }
            else{
                print("Failed")
            }
        }
    }

}

