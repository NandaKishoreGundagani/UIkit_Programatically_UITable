//
//  ViewController.swift
//  FitnessBoss
//
//  Created by APPLE on 6/5/23.
//
import UIKit

class ViewController: UIViewController {
    
    var  mycardView : UIView = {
        var  myView = UIView()
        myView.backgroundColor = .yellow
        myView.translatesAutoresizingMaskIntoConstraints = false

        return myView
    }()
    
        //login programmee
    var loginBtn :  UIButton = {
        var login = UIButton()
        login.setTitle("Login", for: .normal)
        login.backgroundColor = .black
        login.layer.cornerRadius = 10
        login.addTarget(self, action: #selector(loginProfile), for: .touchUpInside)
        login.translatesAutoresizingMaskIntoConstraints = false
        
        return login
    }()
    
    let registerBtn :  UIButton = {
        var register = UIButton()
        register.setTitle("Register", for: .normal)
        register.backgroundColor = .systemFill
        register.layer.cornerRadius = 10
        register.translatesAutoresizingMaskIntoConstraints = false
        
        return  register
        
    }()
    
    //textlable programme
    let textLable :  UILabel = {
        var textlable = UILabel()
        textlable.text = "Regular Exercise To Keep Your Body Fit and Healty"
        textlable.textColor = .black
        textlable.numberOfLines = 0
        textlable.font = UIFont(name: "Helvetica-Bold", size: 25)
        textlable.textAlignment = .center
        // textlable.backgroundColor  = .yellow
        textlable.translatesAutoresizingMaskIntoConstraints = false
        return textlable
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        
        // adding subviews
        view.addSubview(loginBtn)
        view.addSubview(textLable)
        view.addSubview(registerBtn)
        view.addSubview(mycardView)
        
        loginButton()  // adding setup
        
    }
    
    // autolayouts and constraints
    
    func loginButton(){
        NSLayoutConstraint.activate([
            mycardView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mycardView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
            mycardView.heightAnchor.constraint (equalTo: view.heightAnchor, multiplier: 0.6),
            mycardView.topAnchor.constraint(equalTo: view.topAnchor , constant: 0)
        ])

        NSLayoutConstraint.activate([
            textLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLable.bottomAnchor.constraint(equalTo: loginBtn.topAnchor, constant: -60),
            textLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            textLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
        ])
        NSLayoutConstraint.activate([
            loginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginBtn.bottomAnchor.constraint(equalTo: registerBtn.topAnchor, constant: -10),
            loginBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            loginBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            loginBtn.heightAnchor.constraint(equalToConstant: 50 )
        ])
        NSLayoutConstraint.activate([
            registerBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registerBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            registerBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            registerBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            registerBtn.heightAnchor.constraint(equalToConstant: 50 )
        ])
       
    }
       
    // for loginProfileBtnActn method declarartion
    @objc func loginProfile(){
        let vc = ProfileController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    

}

