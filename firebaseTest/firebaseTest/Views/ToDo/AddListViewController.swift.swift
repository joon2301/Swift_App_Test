//
//  AddListViewController.swift.swift
//  firebaseTest
//
//  Created by 이승준 on 2022/02/17.
//

import UIKit
import Firebase

class AddListViewController: UIViewController, UIWindowSceneDelegate{
    @IBOutlet weak var returnButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func returnButton(_ sender:Any){
        dismiss(animated: true, completion: nil)
    }
}
