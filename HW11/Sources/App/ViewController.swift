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
        label.font = UIFont .systemFont(ofSize: 32, weight: .bold)
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 1.0
        return label
    }()

    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()

    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .purple
        return button
    }()

    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()

    /// Label "or connect with"
    private lazy var additionalLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textAlignment = .center
        label.textColor = .gray
        label.font = UIFont .systemFont(ofSize: 18, weight: .regular)
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 1.0
        return label
    }()

    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        return button
    }()

    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemPurple
        return button
    }()

    private lazy var noAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have account?"
        label.textAlignment = .center
        label.textColor = .gray
        label.font = UIFont .systemFont(ofSize: 18, weight: .regular)
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 1.0
        return label
    }()

    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()

    // MARK: Stacks
    private lazy var facebookTwitterButtonsStack: UIStackView = {
        let stackView = UIStackView()
        return stackView
    }()

    private lazy var signUpStack: UIStackView = {
        let stackView = UIStackView()
        return stackView
    }()


    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientBackground()
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupGradientBackground() {
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemIndigo.cgColor,
            UIColor.cyan.cgColor
        ]
        view.layer.addSublayer(gradientLayer)
    }

    private func setupHierarchy() {
    }

    private func setupLayout() {

    }


    // MARK: - Actions

    @objc private func loginPressed(){

    }

    @objc private func forgotPasswordPressed(){

    }

    @objc private func facebookPressed(){

    }

    @objc private func twitterPressed(){

    }

    @objc private func signUpPressed(){

    }

}
