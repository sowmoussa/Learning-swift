//
//  ViewController.swift
//  PostInsta
//
//  Created by Moussa SOW on 17/04/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profil: UIImageView!
    @IBOutlet var imagesLikes: [UIImageView]!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var like: UIButton!
    @IBOutlet weak var descLabel: UILabel!
    var isLiked = false
    var newProfil: UIImageView?
    var baseLikes = 20
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = .white
        setupProfil(iv: profil)
        imagesLikes.forEach { (image) in
            setupProfil(iv: image)
        }
        setupDoubleTap()
        profil.isUserInteractionEnabled = true
        updateLikeLabel()
        setAttributedString("Moussa SOW", "Tuto: Build an insta app", hastags: ["Swift", "iOS"])
    }

    func updateLikeLabel() {
        baseLikes = isLiked ? 21 : 20
        let likeString = "\(baseLikes) j'aime"
        likesLabel.text = likeString
    }
    @IBAction func likePressed(_ sender: Any) {
        addOrRemoveLike()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let first = touches.first {
            if first.view == profil {
                if newProfil == nil {
                    newProfil = UIImageView(frame: view.bounds)
                    newProfil?.image = UIImage(named: "image1")
                    newProfil?.contentMode = .scaleAspectFill
                    view.addSubview(newProfil!)
                }
            }
        }
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        newProfil?.removeFromSuperview()
        newProfil = nil
    }
    @IBAction func otherButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            print("Send message")
        case 2:
            print("Share")
        case 3:
            print("Save")
        default:
            return
        }
    }
    
    func setAttributedString (_ username: String, _ desc: String, hastags: [String]) {
        let attribitedString = NSMutableAttributedString(string: username+" ", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 13)])
        let secondString = NSAttributedString(string: desc, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13)])
        attribitedString.append(secondString)
        var hastagString = " "
        hastags.forEach { (hash) in
            let str = "#"+hash+" "
            hastagString.append(str)
        }
        let thirdString = NSAttributedString(string: hastagString, attributes: [NSAttributedString.Key.font : UIFont.italicSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.systemBlue] )
        attribitedString.append(thirdString)
        descLabel.attributedText = attribitedString
    }
    func setupDoubleTap() {
        postImage.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(addOrRemoveLike))
        tap.numberOfTapsRequired = 2
        postImage.addGestureRecognizer(tap)
    }
    
    @objc func addOrRemoveLike() {
        isLiked.toggle()
        let imageString = isLiked ? "heart.fill" : "heart"
        like.setImage(UIImage(systemName: imageString), for: .normal)
        updateLikeLabel()
    }
    
    func setupProfil (iv: UIImageView) {
        iv.layer.cornerRadius = iv.frame.height / 2
        iv.layer.borderColor = UIColor.systemBackground.cgColor
        iv.layer.borderWidth = 2
    }
}

