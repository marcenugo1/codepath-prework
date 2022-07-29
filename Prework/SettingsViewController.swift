//
//  SettingsViewController.swift
//  Prework
//
//  Created by marcela nunez on 7/27/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tip1TextField: UITextField!
    @IBOutlet weak var tip2TextField: UITextField!
    @IBOutlet weak var tip3TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        let tip1 = Int(tip1TextField.text!) ?? 0
        let tip2 = Int(tip2TextField.text!) ?? 0
        let tip3 = Int(tip3TextField.text!) ?? 0
        //Access UserDefaults
        let defaults = UserDefaults.standard

        defaults.set(tip1, forKey: "tip1UserData")
        defaults.set(tip2, forKey: "tip2UserData")
        defaults.set(tip3, forKey: "tip3UserData")
        
        // Force UserDefaults to save.
        defaults.synchronize()
        
        print("view did disappear")
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
