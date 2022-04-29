//
//  ViewController.swift
//  ThemeManager
//
//  Created by Jorge Azurduy on 4/29/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    
    
    var topLogoImageView: UIImageView!
    var arrowImageView :UIImageView!
    var createAccountLabel: UILabel!
    var emailLabel: UILabel!
    var emailTextField: UITextField!
    var passwordLabel: UILabel!
    var passwordTextField: UITextField!
    var stackView: UIStackView!
    var greenChecks: [UIImageView] = []
    var textDescription1: UILabel!
    var textDescription2: UILabel!
    var textDescription3: UILabel!
    var textDescription4: UILabel!
    var texts: [UILabel] = []
    var loginButton: UIButton!
    var scanButton: UIButton!
    var rightButton: UIButton!
    
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Listening for keyboard events
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    // MARK: - Setup UI
    func setupUI() {
        self.view.setBackground()
        setupHideKeyboard()
        setupBackButton()
        setupTopLogo()
        setupText()
        setupEmail()
        setupPassword()
        setupLoginButton()
    }
    
    func setupHideKeyboard() {
        //Declare a Tap Gesture Recognizer which will trigger our dismissMyKeyboard() function
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        //Add this tap gesture recognizer to the parent view
        view.addGestureRecognizer(tap)
    }
    
    func setupBackButton() {
        arrowImageView = UIImageView(image: Asset.backArrow.image)
        arrowImageView.isUserInteractionEnabled = true
        
        self.view.addSubview(arrowImageView)
        arrowImageView.translatesAutoresizingMaskIntoConstraints = false
        arrowImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        arrowImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14).isActive = true
        arrowImageView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        arrowImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func setupTopLogo() {
        topLogoImageView = UIImageView(image: AssetManager.topLogo)
        view.addSubview(topLogoImageView)
        
        topLogoImageView.translatesAutoresizingMaskIntoConstraints = false
        topLogoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        topLogoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topLogoImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        topLogoImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupText() {
        createAccountLabel = UILabel()
        createAccountLabel.setText(font: FontManager.medium, textColor:  ColorManager.black, size: 18)
        createAccountLabel.text = "Login"
        view.addSubview(createAccountLabel)
        createAccountLabel.numberOfLines = 1
        createAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        createAccountLabel.topAnchor.constraint(equalTo: topLogoImageView.topAnchor, constant: 80).isActive = true
        createAccountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        createAccountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        createAccountLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }

    func setupEmail() {
        emailLabel = UILabel()
        emailLabel.setText(font: FontManager.medium, textColor: ColorManager.white, size: 12)
        emailLabel.text = "Email"
        view.addSubview(emailLabel)
        emailLabel.numberOfLines = 1
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.topAnchor.constraint(equalTo: createAccountLabel.topAnchor, constant: 60).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        emailLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        emailTextField = UITextField()
        emailTextField.tag = 0
        emailTextField.placeholder = "Email"
        emailTextField.keyboardType = .emailAddress
        emailTextField.layer.cornerRadius = 8
        emailTextField.autocorrectionType = .yes
        emailTextField.layer.borderColor = ColorManager.neutral300.cgColor
        emailTextField.layer.borderWidth = 1
        emailTextField.autocapitalizationType = .none
        emailTextField.textColor = ColorManager.neutral600
        emailTextField.backgroundColor = ColorManager.white
        emailTextField.font = UIFont(name: FontManager.bold, size: 18)
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.view.frame.height))
        emailTextField.leftViewMode = UITextField.ViewMode.always
        emailTextField.returnKeyType = .next
        emailTextField.attributedPlaceholder = NSAttributedString(
            string: "Email",
            attributes: [NSAttributedString.Key.foregroundColor: ColorManager.primary200 as Any]
        )
        
        view.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: emailLabel.topAnchor, constant: 20).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    func setupPassword() {
        passwordLabel = UILabel()
        passwordLabel.setText(font: FontManager.medium, textColor: ColorManager.white, size: 12)
        passwordLabel.text = "Password"
        view.addSubview(passwordLabel)
        passwordLabel.numberOfLines = 1
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.topAnchor.constraint(equalTo: emailTextField.topAnchor, constant: 60).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        passwordLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        passwordTextField = UITextField()
        passwordTextField.tag = 1
        passwordTextField.placeholder = "Password"
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.autocorrectionType = .no
        passwordTextField.layer.borderColor = ColorManager.neutral300.cgColor
        passwordTextField.layer.borderWidth = 1

        passwordTextField.autocapitalizationType = .none
        passwordTextField.isSecureTextEntry = true
        passwordTextField.textColor = ColorManager.neutral600
        passwordTextField.backgroundColor = ColorManager.white
        passwordTextField.font = UIFont(name: FontManager.bold, size: 18)
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.view.frame.height))
        passwordTextField.leftViewMode = UITextField.ViewMode.always
        passwordTextField.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: ColorManager.primary200 as Any]
        )
        
        passwordTextField.returnKeyType = .done
        passwordTextField.isSecureTextEntry = true
        setupShowHidePassword()
        
        view.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: passwordLabel.topAnchor, constant: 20).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupShowHidePassword() {
        rightButton = UIButton(type: .custom)
        rightButton.frame = CGRect(x:0, y:0, width:15, height:15)
        rightButton.setImage(UIImage(named: Asset.showPassBlack.name) , for: .normal)
        rightButton.addTarget(self, action: #selector(toggleShowHide), for: .touchUpInside)
        rightButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -14, bottom: 0, right: 0)
        
        passwordTextField.rightViewMode = .always
        passwordTextField.rightView = rightButton
    }
    
    @objc func toggleShowHide(button: UIButton) {
        toggle()
    }

    func toggle() {
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
        if passwordTextField.isSecureTextEntry {
            rightButton.setImage(UIImage(named: Asset.showPassBlack.name) , for: .normal)
        } else {
            rightButton.setImage(UIImage(named: Asset.hidePassBlack.name) , for: .normal)
        }
    }
    
    

    func setupLoginButton() {
        
        loginButton = UIButton()
        loginButton.addTarget(self, action: #selector(self.login(sender:)), for: .touchUpInside)
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.font = UIFont(name: FontManager.bold, size: 14)
        loginButton.setTitleColor(ColorManager.white, for: .normal)
        loginButton.backgroundColor = ColorManager.primary500
        loginButton.layer.cornerRadius = 12.0
                
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    

    // MARK: Action Buttons
    @objc func login(sender: Any) {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        print(email)
        print(password)
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc func keyboardWillShow(notification: Notification) {
        print("Keyboard will show \(notification.name.rawValue)")
    }
    
    @objc func keyboardWillHide(notification: Notification) {
        print("Keyboard will hide \(notification.name.rawValue)")
    }
}
