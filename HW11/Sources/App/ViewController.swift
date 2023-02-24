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
        return button
    }()

    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        return button
    }()

    /// Label "or connect with"
    private lazy var additionalLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        return button
    }()

    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        return button
    }()

    private lazy var noAccountLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        return button
    }()


    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupGradientBackground()

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
