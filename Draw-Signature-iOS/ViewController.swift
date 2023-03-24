//
//  ViewController.swift
//  Draw-Signature-iOS
//
//  Created by Chhan Sophearith on 13/3/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.addTargetAction()
    }
    
    let signatureView: SignatureView = {
        let view = SignatureView()
        view.layer.borderColor = UIColor.blue.cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    let titleLbl: UILabel = {
        let label = UILabel()
        label.text = "Draw Signature"
        return label
    }()
    
    let saveButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Save", for: .normal)
        btn.backgroundColor = .blue
        btn.setTitleColor(.white, for: .normal)
        return btn
    }()
    
    let clearButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Cear", for: .normal)
        btn.backgroundColor = .red
        btn.setTitleColor(.white, for: .normal)
        return btn
    }()

    private func setupView() {
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLbl)
        titleLbl.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20).isActive = true
        titleLbl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        titleLbl.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        view.addSubview(signatureView)
        signatureView.translatesAutoresizingMaskIntoConstraints = false
        signatureView.leftAnchor.constraint(equalTo: titleLbl.leftAnchor).isActive = true
        signatureView.rightAnchor.constraint(equalTo: titleLbl.rightAnchor).isActive = true
        signatureView.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 5).isActive = true
        signatureView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(clearButton)
        clearButton.leftAnchor.constraint(equalTo: signatureView.leftAnchor).isActive = true
        clearButton.topAnchor.constraint(equalTo: signatureView.bottomAnchor, constant: 10).isActive = true
        clearButton.rightAnchor.constraint(equalTo: signatureView.centerXAnchor, constant: -10).isActive = true
        clearButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(saveButton)
        saveButton.leftAnchor.constraint(equalTo: signatureView.centerXAnchor, constant: 10).isActive = true
        saveButton.topAnchor.constraint(equalTo: signatureView.bottomAnchor, constant: 10).isActive = true
        saveButton.rightAnchor.constraint(equalTo: signatureView.rightAnchor).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    private func addTargetAction() {
        clearButton.addTarget(self, action: #selector(tapClear), for: .touchUpInside)
    }
    
    @objc func tapSave() {}
    
    @objc func tapClear() {
        signatureView.clearDraw()
    }
}

