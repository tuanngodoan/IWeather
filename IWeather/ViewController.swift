//
//  ViewController.swift
//  IWeather
//
//  Created by Doãn Tuấn on 11/17/16.
//  Copyright © 2016 doantuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityLable: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var ConverLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    var quote  = ["Ngày đi, tháng chạy, năm bay. Thời gian nước chảy, chẳng quay được về.","The undertaking of a new action brings new strength.","Knowing trees, I understand the meaning of patience. Knowing grass, I can appreciate persistence."]
    
    var city = ["Ha Noi","Ho Chi Minh","Hai Duong","London","Rome"]
    
    var backg = ["Sun","Blood","Moon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ConverTemp(_ sender: Any) {
        
        print("OKEEEEEEEEEEEE")
    }
    
    @IBAction func refeshButton(_ sender: Any) {
        
        let cityIndex = Int(arc4random_uniform(UInt32(city.count)))
        
        cityLable.text = city[cityIndex]
        
        let quoteIndex = Int(arc4random_uniform(UInt32(quote.count)))
        
        textLabel.text = quote[quoteIndex]
        
        let backInd = Int(arc4random_uniform(UInt32(backg.count)))
        
        background.image = UIImage.init(named: backg[backInd])
        
        getTemp()
        
        
    }
    func getTemp(){
        tempLabel.text = String(tempRandom())
        
    }

    func tempRandom() -> Int{
        return  Int(arc4random_uniform(UInt32(17)) + 15)
    }

}
