//
//  ViewController.swift
//  HW11
//
//  Created by Kuanysh al-Khattab Auyelgazy on 23.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - Outlests

    private let gradientLayer = CAGradientLayer()

    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        return label
    }()

    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Login"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.setLeftIcon(UIImage(systemName: "person")!)

        // Adding shadow
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOpacity = 0.5
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 10
        textField.layer.shouldRasterize = true
        textField.layer.rasterizationScale = UIScreen.main.scale
        return textField
    }()

    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.isSecureTextEntry = true
        textField.setLeftIcon(UIImage(systemName: "lock")!)

        // Adding shadow
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOpacity = 0.5
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 10
        textField.layer.shouldRasterize = true
        textField.layer.rasterizationScale = UIScreen.main.scale
        return textField
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.layer.cornerRadius = 25
        button.backgroundColor = UIColor(red: 37/255, green: 73/255, blue: 150/255, alpha: 1)
        button.addTarget(self, action: #selector(loginPressed), for: .touchUpInside)

        // Adding shadow
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.4
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 15
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()

    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot your password?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(forgotPasswordPressed), for: .touchUpInside)
        return button
    }()

    /// Label "or connect with"
    private lazy var additionalLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textAlignment = .center
        label.textColor = .lightText
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()

    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.setTitle("  Facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 25
        button.backgroundColor = UIColor(red: 66/255, green: 103/255, blue: 178/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        let iconImage = UIImage(named: "facebook")?.withRenderingMode(.alwaysOriginal)
        button.setImage(iconImage, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(facebookPressed), for: .touchUpInside)

        // Adding shadow
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()

    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        button.setTitle("  Twitter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 25
        button.backgroundColor = UIColor(red: 55/255, green: 164/255, blue: 239/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        let iconImage = UIImage(named: "twitter")?.withRenderingMode(.alwaysOriginal)
        button.setImage(iconImage, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(twitterPressed), for: .touchUpInside)

        // Adding shadow
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()

    private lazy var noAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have account?"
        label.textAlignment = .center
        label.textColor = .lightText
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()

    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.addTarget(self, action: #selector(signUpPressed), for: .touchUpInside)
        return button
    }()

    // MARK: Stacks

    private lazy var facebookTwitterButtonsStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()

    private lazy var signUpStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 20
        return stackView
    }()


    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientBackground()
        setupStackViews()
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupGradientBackground() {
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 54/255, green: 55/255, blue: 149/255, alpha: 1).cgColor,
            UIColor(red: 0/255, green: 92/255, blue: 151/255, alpha: 1).cgColor
        ]
        view.layer.addSublayer(gradientLayer)
    }

    private func setupStackViews() {
        facebookTwitterButtonsStack.addArrangedSubview(facebookButton)
        facebookTwitterButtonsStack.addArrangedSubview(twitterButton)
        signUpStack.addArrangedSubview(noAccountLabel)
        signUpStack.addArrangedSubview(signUpButton)
    }

    private func setupHierarchy() {
        view.addSubviews(
            loginLabel,
            loginTextField,
            passwordTextField,
            loginButton,
            forgotPasswordButton,
            additionalLabel,
            facebookTwitterButtonsStack,
            signUpStack
        )
    }

    private func setupLayout() {
        loginLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.centerX.equalTo(view)
        }

        loginTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp_bottomMargin).offset(60)
            make.centerX.equalTo(view)
            make.left.equalToSuperview().offset(60)
            make.right.equalToSuperview().offset(-60)
            make.height.equalTo(50)
        }

        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp_bottomMargin).offset(25)
            make.centerX.equalTo(view)
            make.left.equalToSuperview().offset(60)
            make.right.equalToSuperview().offset(-60)
            make.height.equalTo(50)
        }

        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp_bottomMargin).offset(65)
            make.left.equalToSuperview().offset(60)
            make.right.equalToSuperview().offset(-60)
            make.height.equalTo(50)
        }

        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp_bottomMargin).offset(30)
            make.centerX.equalTo(view)
        }

        additionalLabel.snp.makeConstraints { make in
            make.bottom.equalTo(facebookTwitterButtonsStack.snp_topMargin).offset(-30)
            make.centerX.equalTo(view)
        }

        facebookButton.snp.makeConstraints { make in
            make.height.equalTo(facebookTwitterButtonsStack.snp.height)
        }

        twitterButton.snp.makeConstraints { make in
            make.height.equalTo(facebookTwitterButtonsStack.snp.height)
        }

        facebookTwitterButtonsStack.snp.makeConstraints { make in
            make.bottom.equalTo(signUpStack.snp_topMargin).offset(-30)
            make.centerX.equalTo(view)
            make.height.equalTo(45)
            make.left.equalToSuperview().offset(60)
            make.right.equalToSuperview().offset(-60)
        }

        signUpStack.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-10)
            make.centerX.equalTo(view)
        }

    }


    // MARK: - Actions

    @objc private func loginPressed(){
        print("logging in")
    }

    @objc private func forgotPasswordPressed(){
        print("forgot password")
    }

    @objc private func facebookPressed(){
        print("facebook")
    }

    @objc private func twitterPressed(){
        print("twitter")
    }

    @objc private func signUpPressed(){
        print("sign up")
    }

}

// MARK: - Extensions

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
