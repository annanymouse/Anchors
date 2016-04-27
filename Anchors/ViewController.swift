//
//  ViewController.swift
//  Anchors
//
//  Created by Anna Hull on 4/26/16.
//  Copyright © 2016 Anna Hull. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "Anchors"
        view.backgroundColor = .whiteColor()
        
//        let box = UIView()
//        box.translatesAutoresizingMaskIntoConstraints = false
//        box.backgroundColor = .redColor()
//        view.addSubview(box)
        
        let container = UIStackView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.axis = .Vertical
        view.addSubview(container)
        
        let photoView = UIImageView(image: UIImage(named: "Tiger"))
        container.addArrangedSubview(photoView)
        
        let buttonsContainer = UIStackView()
        //buttonsContainer.distribution = .EqualSpacing
        buttonsContainer.alignment = .Leading
        buttonsContainer.spacing = 16
        buttonsContainer.axis = .Horizontal
        buttonsContainer.layoutMargins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        buttonsContainer.layoutMarginsRelativeArrangement = true
        container.addArrangedSubview(buttonsContainer)
        
        let likeButton = UIButton()
        likeButton.setImage(UIImage(named: "echo"), forState: .Normal)
        buttonsContainer.addArrangedSubview(likeButton)
        
        let commentButton = UIButton()
        commentButton.setImage(UIImage(named: "reverb"), forState: .Normal)
        buttonsContainer.addArrangedSubview(commentButton)
        
        let sendButton = UIButton()
        sendButton.setImage(UIImage(named: "chipmunk2x-iphone"), forState: .Normal)
        buttonsContainer.addArrangedSubview(sendButton)
        
        buttonsContainer.addArrangedSubview(UIView())
        
        NSLayoutConstraint.activateConstraints([
            container.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor), //, constant: 16),
            container.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor), //, constant: -16),
            //box.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: 16),
            //box.topAnchor.constraintEqualToAnchor(view.topAnchor, constant: 16),
            container.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 16), //,
            //container.heightAnchor.constraintEqualToConstant(44)
            photoView.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 1),
            photoView.heightAnchor.constraintEqualToConstant(400),
            likeButton.heightAnchor.constraintEqualToConstant(30),
            likeButton.widthAnchor.constraintEqualToConstant(30),
            commentButton.heightAnchor.constraintEqualToConstant(30),
            commentButton.widthAnchor.constraintEqualToConstant(30),
            sendButton.heightAnchor.constraintEqualToConstant(30),
            sendButton.widthAnchor.constraintEqualToConstant(30)
            //buttonsContainer.heightAnchor.constraintEqualToConstant(30)
            
//            NSLayoutConstraint(item: box, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1, constant: 0),
//            NSLayoutConstraint(item: box, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1, constant: 0),
//            NSLayoutConstraint(item: box, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1, constant: 0),
//            NSLayoutConstraint(item: box, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1, constant: 0)
            ])
    }

}

