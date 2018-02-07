//
//  logincontroller.swift
//  loginpage
//
//  Created by Alumno on 23/01/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit
class LoginController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 61/255, green:91/255, blue:161/255, alpha:1)
        
        setupViews()
    }
    
    let inputContainerView:UIView = {
    let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        return view
    }()
    
    let inputTextFiel : UITextField = {
    let textField = UITextField()
        textField.placeholder = "User:"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordTextFiel : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email:"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let emailTextFiel : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password:"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let registerButton : UIButton = {
        var button = UIButton()
        button.setTitle("Register", for: .normal)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)//se sobre escribe el UiButton.White
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setupViews(){
        view.addSubview(inputContainerView)//este es el padre de la applicacion
        inputContainerView.addSubview(inputTextFiel)//se crea los hijos que seria el inputContainerView
        inputContainerView.addSubview(emailTextFiel)
        inputContainerView.addSubview(passwordTextFiel)
        
        view.addSubview(registerButton)
        
        //Asigancion y construccion de los cuadros de texto
        //inputContainerView.topAnchor.contraint(EqualTo: view.topAnchor, constant: 15) nota: esto es para separar pixeles
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true //El -24 es para minimizar el cuadro de texto
        inputContainerView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        inputTextFiel.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        inputTextFiel.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        inputTextFiel.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        inputTextFiel.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor,multiplier: 1/3).isActive = true
        
        passwordTextFiel.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor).isActive = true //Aqui se le asigna el cuadro del inputTextField para que continue ahì
        passwordTextFiel.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        passwordTextFiel.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        passwordTextFiel.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor,multiplier: 1/3).isActive = true
        
        emailTextFiel.topAnchor.constraint(equalTo: passwordTextFiel.bottomAnchor).isActive = true //Aqui se le asigna el cuadro del inputTextField para que continue ahì
        emailTextFiel.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        emailTextFiel.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        emailTextFiel.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor,multiplier: 1/3).isActive = true
        
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 15).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        registerButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
    }
    
}
