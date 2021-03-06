//
//  TodoViewController.swift
//  firebaseTest
//
//  Created by 이승준 on 2022/02/07.
//

import UIKit
import Firebase
import FirebaseFirestore

class TodoViewController: UIViewController {
    @IBOutlet weak var sideMenuButton: UIBarButtonItem!
    @IBOutlet weak var searchBar: UITextField!
    
    var db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = .white

        sideMenuButton.target = revealViewController()
        sideMenuButton.action = #selector(revealViewController()?.revealSideMenu)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
