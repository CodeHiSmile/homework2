//
//  ViewController.swift
//  baitap_buoi2
//
//  Created by thanmanhvinh on 07/10/2021.
//

import UIKit

class ViewController: UIViewController {
//lien quan den View keo vao day
    @IBOutlet weak var text_form_field: UITextField!
    @IBOutlet weak var txt_message: UILabel!
    @IBOutlet weak var btn_random: UIButton!
    @IBOutlet weak var buttonStartGame: UIButton!
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var btnRandomImage: UIButton!
    
    var numberRandom : Int = 0
    var numberImage: Int = 0
    var numberImageRandom: Int = 0
    let listImage = ["Image", "image1", "image2"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        photoView.image = UIImage(named: listImage[numberImage])
        btn_random.isEnabled = false
        txt_message.text = ""
    }
//các hàm để ở đây
    @IBAction func random(_ sender: UIButton) {
        let textInput = Int(text_form_field.text ?? "") ?? 0
    
        if(textInput < numberRandom){
            txt_message.text = "Bé quá"
        } else if(textInput > numberRandom){
            txt_message.text = "Lớn quá"
        } else {
            txt_message.text = "Chúc mừng bạn đã chiến thắng!!!"
        }
    }
    
    @IBAction func startGame(_ sender: UIButton) {
        numberRandom = Int.random(in: 1..<100)
        btn_random.isEnabled = true
        print(numberRandom)
    }
    
    @IBAction func randomImage(_ sender: UIButton) {
        
    }
    @IBAction func randomImageNow(_ sender: Any) {
        numberImageRandom = randomNumber(length: listImage.count)
        
        while (numberImage == numberImageRandom){
            numberImageRandom = randomNumber(length: listImage.count)
            print(numberImage)
            print(numberImageRandom)
        }
        
        numberImage = numberImageRandom
        
        photoView.image = UIImage(named: listImage[numberImage])
    }
    
    func randomNumber(length: Int) -> Int {
        var random : Int = 0
        
        random = Int.random(in: 0..<length)
        return random
    }
    
    
}

