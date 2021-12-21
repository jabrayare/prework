//
//  SettingsViewController.swift
//  prework
//
//  Created by Jibril Mohamed on 12/20/21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var p1TextField: UITextField!
    @IBOutlet weak var p2TextField: UITextField!
    @IBOutlet weak var p3TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("Settings view will appear!")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("Settings view did disappear!")
    }
    override func viewWillDisappear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        print("Settings veiw will disapper!")
        let p1 = Double(p1TextField.text!) ?? 15
        let p2 = Double(p2TextField.text!) ?? 18
        let p3 = Double(p3TextField.text!) ?? 20
        
        defaults.set(p1, forKey: "p1")
        defaults.set(p2, forKey: "p2")
        defaults.set(p3, forKey: "p3")
        
        // Force UserDefaults to save.
        defaults.synchronize()
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
