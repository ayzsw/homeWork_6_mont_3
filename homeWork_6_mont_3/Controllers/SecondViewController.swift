//
//  SecondViewController.swift
//  homeWork_6_mont_3
//
//  Created by Аяз on 2/5/23.
//


import UIKit
import SnapKit
import IQKeyboardManagerSwift

class SecondViewController: UIViewController {
    
    
    private let blueImage: UIImageView = {
            
            let firstImage =  UIImageView()
            firstImage.image = UIImage(named: "blue")
            return firstImage
            
        }()
    
 
    
    
    private let regicterLbl: UILabel = {
        
        let label = UILabel()
        label.text = "Register"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .white
        
        
        return label
    }()
    
    private let createNewaccLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Create a new account"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .gray
        
        
        return label
    }()
    
    
    private let userNameLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Username"
        label.textColor  = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    private let emailLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Email"
        label.textColor  = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    
    private let mobileNumberLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Mobile Number"
        label.textColor  = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    private let passwordLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Password"
        label.textColor  = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
 
    
  
    
    
    private let emailTextField: UITextField = {
        let emailTF = UITextField()
      
           
        emailTF.placeholder = "Email"
        emailTF.layer.cornerRadius = 6
        let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
        emailTF.leftView = spacerView
        emailTF.leftViewMode = .always
        emailTF.backgroundColor = .white
        return emailTF

    }()
    
    
    private let userNameTextField: UITextField = {
        let userNameTF = UITextField()
      
           
        userNameTF.placeholder = "Username"
        userNameTF.layer.cornerRadius = 6
        let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
        userNameTF.leftView = spacerView
        userNameTF.leftViewMode = .always
        userNameTF.backgroundColor = .white
        return userNameTF

    }()
    
    
    private let mobileNumberTextField: UITextField = {
        let mobileNumberTF = UITextField()
      
           
        mobileNumberTF.placeholder = "Mobile Number"
        mobileNumberTF.layer.cornerRadius = 6
        let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
        mobileNumberTF.leftView = spacerView
        mobileNumberTF.leftViewMode = .always
        mobileNumberTF.backgroundColor = .white
        return mobileNumberTF

    }()
    
    private let passwordTextField: UITextField = {
        let passwordTF = PasswordTF()
        passwordTF.placeholder = "Password"
        passwordTF.layer.cornerRadius = 6
        let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
        passwordTF.leftView = spacerView
        passwordTF.leftViewMode = .always
        passwordTF.backgroundColor = .white
        return passwordTF
    }()
    
    
    
    private let loginButton: UIButton = {
        let loginBtn = UIButton()
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(.white, for: .normal)
        loginBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        loginBtn.layer.cornerRadius = 24
        loginBtn.backgroundColor = .systemBlue
      
        return loginBtn
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        initUI()
     
     
    }
    
    private func initUI (){
        [blueImage, regicterLbl, createNewaccLabel, emailLabel,userNameLabel,mobileNumberLabel,passwordLabel, emailTextField, passwordTextField,mobileNumberTextField,userNameTextField, loginButton, ].forEach { box in
                       view.addSubview(box)
                   }
        constraint()
        initAction()
    }
    
    
    
    private func constraint (){
        
        
        blueImage.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(0)
            make.leading.trailing.equalToSuperview().inset(0)
            make.height.equalTo(200)
                 }
      
        
        
        regicterLbl.snp.makeConstraints { make in
            make.top.equalTo(blueImage.snp.bottom).offset(0)
            make.leading.trailing.equalToSuperview().inset(120)
        }
        
        createNewaccLabel.snp.makeConstraints { make in
            make.top.equalTo(regicterLbl.snp.bottom).offset(0)
            make.leading.trailing.equalToSuperview().inset(80)
        }
        
        
        userNameLabel.snp.makeConstraints { make in
            make.top.equalTo(createNewaccLabel.snp.bottom).offset(18)
            make.leading.equalToSuperview().offset(30)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(userNameTextField.snp.bottom).offset(6)
            make.leading.equalToSuperview().inset(30)
        }
        
        mobileNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(6)
            make.leading.equalToSuperview().inset(30)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(mobileNumberTextField.snp.bottom).offset(6)
            make.leading.equalToSuperview().inset(30)
        }
        
      
     
        
        
        
        userNameTextField.snp.makeConstraints { make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        mobileNumberTextField.snp.makeConstraints { make in
            make.top.equalTo(mobileNumberLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
                    }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
      
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
       
       
        
        
    }
  
    private func initAction(){
        loginButton.addTarget(self, action: #selector(login(_ :)), for: .touchUpInside)
        ()
    }
    
    @objc private func login(_ sender: UIButton){
      
        
        if emailTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true || mobileNumberTextField.text?.isEmpty ?? true || userNameTextField.text?.isEmpty ?? true  {
            
            textField(emailTextField)
            textField(passwordTextField)
            textField(mobileNumberTextField)
            textField(userNameTextField)
            
        }
        else{
            let vc = ThirdViewController()
            vc.email = emailTextField.text
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        
        
    }
    
    func textField (_ text:UITextField)  {
         
         text.layer.borderWidth = 1
         text.layer.borderColor = UIColor.red.cgColor
         text.placeholder = "заполните поле"
         
     }
    

 }
