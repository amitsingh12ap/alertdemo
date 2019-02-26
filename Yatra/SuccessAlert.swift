//
//  SuccessAlert.swift
//  Yatra
//
//  Created by Amit Singh on 26/02/19.
//  Copyright © 2019 Amit Singh. All rights reserved.
//

import UIKit

public class SuccessAlert: NSObject {
    public static func showSuccessAlert(_ controller : UIViewController){
        let alertController = UIAlertController(title: "Alert", message: "This is an alert.", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "Default", style: .default) { (action:UIAlertAction) in
            print("You've pressed default");
        }
        
        let action2 = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction) in
            print("You've pressed cancel");
        }
        
        let action3 = UIAlertAction(title: "Destructive", style: .destructive) { (action:UIAlertAction) in
            print("You've pressed the destructive");
        }
        
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(action3)
        controller.present(alertController, animated: true, completion: nil)

    }
}
