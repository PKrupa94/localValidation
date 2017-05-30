//
//  ViewController.swift
//  LocalValidation
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSubmitAction(_ sender: Any) {
        if(txtUserName.text!.isEmpty){
            disPlayAlert(message: "Enter UserName")
        }else if(txtUserName.text!.isEmpty){
            disPlayAlert(message: "Enter Password")
        }else{
            print("success")
        }
    }
    
    func disPlayAlert(message:String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }

}

