//
//  WelcomeController.swift
//  OnBoarding
//
//  Created by Moussa SOW on 20/04/2021.
//

import UIKit

class WelcomeController: UIViewController {

    @IBOutlet weak var holderView: UIView!
    let scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configure()
    }
    
    private func configure() {
        // set up scroll view
        scrollView.frame = holderView.bounds
        holderView.addSubview(scrollView)
        
        let titles = ["Welcome", "Bienvenue", "Bonsoir"]
        
        for x in 0..<3 {
            let pageView = UIView(frame: CGRect(x: CGFloat(x)*(holderView.frame.size.width), y: 0, width: holderView.frame.size.width, height: holderView.frame.size.height))
            scrollView.addSubview(pageView)
            
            // Title, Image and Button
            let label = UILabel(frame: CGRect(x: 10, y: 10, width: holderView.frame.size.width-20, height: 120))
            let imageView = UIImageView(frame: CGRect(x: 10, y: 140, width: holderView.frame.size.width-20, height: pageView.frame.size.height-205))
            let button = UIButton(frame: CGRect(x: 10, y: pageView.frame.size.height-60, width: holderView.frame.size.width-20, height: 50))
            
            label.textAlignment = .center
            pageView.addSubview(label)
            label.text = titles[x]
            
            imageView.contentMode = .scaleToFill
            imageView.image = UIImage(named: "welcom_\(x+1)")
            pageView.addSubview(imageView)
            
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .black
            button.setTitle("Continue", for: .normal)
            if x == 2 {
                button.setTitle("Get Started", for: .normal)
            }
            button.addTarget(self, action: #selector(didTapBtn), for: .touchUpInside)
            button.tag = x+1
            pageView.addSubview(button)
        }
        scrollView.contentSize = CGSize(width: holderView.frame.size.width*3, height: 0)
        scrollView.isPagingEnabled = true
    }

    @objc func didTapBtn(_ button: UIButton) {
        guard button.tag < 3 else {
            Core.shared.isNotNew()
            dismiss(animated: true, completion: nil)
            return
        }
        // scroll to next page
        scrollView.setContentOffset(CGPoint(x: holderView.frame.size.width * CGFloat(button.tag), y: 0), animated: true)
    }
}
