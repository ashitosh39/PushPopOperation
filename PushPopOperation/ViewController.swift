//
//  ViewController.swift
//  PushPopOperation
//
//  Created by Mac on 20/02/24.
//

import UIKit
// 4. conform to protocol
class ViewController: UIViewController, BackDataPassing{

    

    @IBOutlet weak var nameTextField: UITextField!
    var extractedName : String?
    
    @IBOutlet weak var LastNameLabel: UILabel!
    var secondViewController : SecondViewController = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func btnMoveToSVC(_ sender: UIButton) {
        extractedName = self.nameTextField.text
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.nameContainer = extractedName
        
        secondViewController.backDataPassDelegate = self
        self.navigationController?.pushViewController(secondViewController, animated: true)
//        self.navigationController?.
    }
    func passDataBack(lastName: String) {
        self.LastNameLabel.text = lastName
    }
}

