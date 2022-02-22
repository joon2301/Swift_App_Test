//
//  AlarmViewController.swift
//  firebaseTest
//
//  Created by 이승준 on 2022/02/07.
//

import UIKit

class AlarmViewController: UIViewController {
    @IBOutlet var sideMenuButton: UIBarButtonItem!

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
