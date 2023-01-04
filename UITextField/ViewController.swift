//
//  ViewController.swift
//  UITextField
//
//  Created by Bedel Hüseyin Çiftçi on 4.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.isHidden = true
        
    }
    
    @IBAction func didTapLoginButton(_ sender: UIButton){
        print("Username: \(usernameTextField.text)")
        if usernameTextField.text == "bedel", passwordTextField.isHidden {
            passwordTextField.isHidden = false
        } else {
            
            if usernameTextField.text != "bedel"{
                infoLabel.text = "Hata: Kullanıcı adı boş bırakılamaz."
                infoLabel.isHidden = false
            }else if !(passwordTextField.isHidden), passwordTextField.text == "1234" { activityIndicator.startAnimating()
            }else {
                infoLabel.text = "Hata:Şifreniz yanlış."
                infoLabel.isHidden = false
            }
            
        }
        
    }
}
