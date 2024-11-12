//
//  SecondViewController.swift
//  PushPopOperation
//
//  Created by Mac on 20/02/24.
//

import UIKit
// 1. Now creating protocol
protocol BackDataPassing{
    func passDataBack(lastName : String)
}

class SecondViewController: UIViewController {
    
    

    @IBOutlet weak var nameLabel: UILabel!
    var nameContainer : String?
    @IBOutlet var LastNameTextField: UITextField!
    
    var backDataPassDelegate : BackDataPassing? // 2. create proparty of protocol  ------- which is delegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = nameContainer
        
    }
    

    @IBAction func btnBackAction(_ sender: UIButton) {
        var extractedLastName = self.LastNameTextField.text
        guard let delegate1 = backDataPassDelegate else { return  }
        
        delegate1.passDataBack(lastName: extractedLastName!) // 3. Pass Data
        navigationController?.popViewController(animated: true)
        
    }
}
