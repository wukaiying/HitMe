//
//  ViewController.swift
//  HitMe
//
//  Created by Kai Ying Wu on 08/12/2016.
//  Copyright © 2016 Kai Ying Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alertButton: UIButton!
    @IBOutlet weak var sliderBar: UISlider!
    
    var currentValue:Int = 0
    var targetValue:Int = 0
    
    //该函数在页面正在加载的时候运行，只运行一次
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()//第一次进入页面初始化
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var alertAction: UIButton!
 
    @IBAction func sliderBarAction(_ sliderBar: UISlider) {
        currentValue = lroundf(sliderBar.value)
        print("\(currentValue)")
    }
    @IBAction func alertAction(_ sender: AnyObject) {
        let message = "当前滑动条的数值是：\(currentValue)\n目标数值是：\(targetValue)"
        let alert = UIAlertController(title: "hello,world", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "awesome", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
        startNewRound()  //每点击一次button一轮游戏结束
    }
    
    //开始新的一局游戏
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        sliderBar.value = Float(currentValue)
    }
    
    //更新目标标签
    func updateTargetValueLable() {
        
    }

}

