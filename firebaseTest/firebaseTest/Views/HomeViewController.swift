//
//  HomeViewController.swift
//  firebaseTest
//
//  Created by 이승준 on 2022/02/07.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var sideMenuButton: UIBarButtonItem!
    @IBOutlet var randomLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = .white

        sideMenuButton.target = revealViewController()
        sideMenuButton.action = #selector(revealViewController()?.revealSideMenu)
        
        randomLabel.text = "아무거나 자유롭게 꾸미는 홈 공간"
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
