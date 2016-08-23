//
//  ViewController.swift
//  DrawBall
//
//  Created by Hoàng Minh Thành on 8/22/16.
//  Copyright © 2016 Hoàng Minh Thành. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tv_sobong: UITextField!
    
    var magin:CGFloat = 30
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var sobong = 0
    @IBAction func action_draw(sender: UIButton) {
        if sobong > 0
        {
            sobong = Int(tv_sobong.text!)!
            drawball()
        }
        else
        {
            print("Giá trị không hợp lệ")
        }
    }
    func drawball () {
        for subview in view.subviews{
            
            if subview.isKindOfClass(UIImageView) {
                subview.removeFromSuperview()
            }
            
        }
        for indexhang in 0...sobong {
            for indexcot in 0...sobong {
                let image = UIImage(named: "ball")
                let ball = UIImageView(image: image)
                ball.center = CGPointMake(magin + CGFloat(indexhang)*spacehang(), 70 + CGFloat(indexcot)*spacecot())
                self.view.addSubview(ball)
            }
        }

    }
    func spacehang() -> CGFloat {
        let space = ((self.view.bounds.size.width - 2*magin)/(CGFloat(sobong-1)))
        return space
    }
    func spacecot() -> CGFloat {
        let space = ((self.view.bounds.size.height - 2*70)/(CGFloat(sobong-1)))
        return space
    }
}

