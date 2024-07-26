//
//  ViewController.swift
//  Example_SPM2
//
//  Created by Limefriends on 7/5/24.
//

import UIKit
import Lime_UIComponents
import SnapKit

class ViewController: UIViewController {
    
    var textLabel: BaseLabel = {
        let label = BaseLabel(text: "테스트 테스트 ", font: .bold, fontSize: 10, textColor: .black)
        label.textInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        label.setCornerRadiusAndBorder(radius: 10,
                                       borderColor: .red,
                                       borderWidth: 1)
        return label
        
    }()
    
    var testButton: UIButton = {
       let button = UIButton()
        button.setTitle("바꾸기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        button.layer.cornerRadius = 5
        button.layer.cornerCurve = .continuous
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.borderWidth = 1
        button.clipsToBounds = true
        return button
    }()
    
    var radiusButton: UIButton = {

        let button = BaseButton(spacing: 5, title: "마지막 텍스트", image: UIImage(systemName: "doc.fill"), imageSize: CGSize(width: 15, height: 15), imageColor: .purple, insets: UIEdgeInsets(top: 3, left: 8, bottom: 3, right: 8), radius: 20, borderColor: .purple, borderWidth: 2, semanticContentAttribute: .forceRightToLeft)
        return button
    }()
    
    var textField1: BaseTextField = {
        let textField = BaseTextField(placeHolder: "플레이스 홀더 입니다.",
                                      textColor: .blue,
                                      bgColor: .systemGray6,
                                      tintColor: .red,
                                      padding: 10)
        textField.setRadiusAndBorder(radius: 10, borderColor: .blue, borderWidth: 2)
        textField.setPlaceHolderColor(.orange)
        textField.setSecureTextField(true)
        return textField
    }()
    
    
    var imageAndText: BaseButton = {
        let button = BaseButton(text: "", fontSize: 20)
        button.setLeftImageRightTitle(image: UIImage(systemName: "flame")!,
                                      title: "사진 같이 텍스트",
                                      textColor: .red,
                                      spacing: 15)
        return button
    }()
    
    var placeHolder: String = "텍스트 뷰 플레이스 홀더 입니다."
    
    lazy var testTextView: BaseTextView = {
       let textView = BaseTextView(inset: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10),
                                   fontSize: 20,
                                   fontWeight: .medium,
                                   textColor: .lightGray,
                                   maxHeight: 200,
                                   minHeight: 100)
        textView.placeHolder = "텍스트 뷰 플레이스 홀더 입니다."
        textView.setRadidusAndBorder(radius: 10, borderColor: .blue, borderWidth: 2)
        return textView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(textLabel)
        self.view.addSubview(testButton)
        self.view.addSubview(imageAndText)
        self.view.addSubview(radiusButton)
        self.view.addSubview(textField1)
        self.view.addSubview(testTextView)
        
        textLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.centerX.equalToSuperview()
        }
        
        testButton.snp.makeConstraints { make in
            make.top.equalTo(self.textLabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        
        imageAndText.snp.makeConstraints { make in
            make.top.equalTo(self.testButton.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
// test
        // test2
        radiusButton.snp.makeConstraints { make in
            make.top.equalTo(self.imageAndText.snp.bottom).offset(20)
//            make.horizontalEdges.equalToSuperview().inset(10)
            make.centerX.equalToSuperview()
            make.width.equalTo(350)
            make.height.equalTo(50)
        }
        
        textField1.snp.makeConstraints { make in
            make.top.equalTo(self.radiusButton.snp.bottom).offset(20)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            
        }
        
        testTextView.snp.makeConstraints { make in
            make.top.equalTo(self.textField1.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(testTextView.minHeight!)
            make.width.equalTo(300)
        }
        
        
        self.testButton.addTarget(self, action: #selector(changeAction), for: .touchUpInside)
    }
    
    @objc func changeAction() {
//        textLabel.applyCornerRadiusAndBorderProperties(radius: 10, borderColor: .blue, borderWidth: 2)
        textLabel.text = "폰트 사이즈는 유지 되는가?"
        
        let test11 = 10

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
