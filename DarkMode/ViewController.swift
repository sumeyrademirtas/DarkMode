//
//  ViewController.swift
//  DarkMode
//
//  Created by Sümeyra Demirtaş on 10.06.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //overrideUserInterfaceStyle = .light
        // view controller a ozel, kullanicinin telefonunda su an hangi mode u kullandigi onemli olmadan light a aliyor
        //eger butun uygulamaya ozel olsun istersek, info plist e gidip User Interface Style dan belirleyebiliriz
        

    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.red
            
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }


}

