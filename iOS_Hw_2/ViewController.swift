//
//  ViewController.swift
//  iOS_Hw_2
//
//  Created by User22 on 2019/4/11.
//  Copyright © 2019 123. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateButton: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var textFieldName: UITextField!

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg")!)
    }

    @IBAction func closeKeyboard(_ sender: Any) {
    }
    
    @IBAction func changeDatePicker(_ sender: Any) {
      
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "zh_TW")
        formatter.dateFormat = "MM/dd/yyyy"
        let date_dob = datePicker.date
        //抓年份
        let dateFormatterYear = DateFormatter()
        dateFormatterYear.dateFormat = "y"
        let year = dateFormatterYear.string(from: date_dob)
        //抓月份
        let dateFormatterMonth = DateFormatter()
        dateFormatterMonth.dateFormat = "M"
        let month = dateFormatterMonth.string(from: date_dob)
        //抓日
        let dateFormatterDay = DateFormatter()
        dateFormatterDay.dateFormat = "d"
        let day = dateFormatterDay.string(from: date_dob)
        
        
        labelText.text = month + day
        let i_month = Int(month)
        let i_day = Int(day)!
        let i_year = Int(year)!
        let yearPet = (i_year%12) // 0 猴 1 雞 2 狗 3 豬 4 鼠 5 牛 6 虎 7 兔 8 龍 9 蛇 10 馬 11 羊
        labelText.text = String(yearPet)
        if segmentControl.selectedSegmentIndex == 1{
        switch (i_month) {
        case 1:
            if(i_day >= 20 && i_day <= 31){
                imageView.image = UIImage(named: "fate-aquarius")
                labelText.text = "水瓶座"
            }
            if(i_day>=1 && i_day<=19){
                imageView.image = UIImage(named: "fate-capricorn")
                labelText.text = "摩羯座"
            }
            break;
        case 2:
            if(i_day>=1 && i_day<=18){
                imageView.image = UIImage(named: "fate-aquarius")
                labelText.text = "水瓶座"
            }
            if(i_day>=19 && i_day<=31){
                imageView.image = UIImage(named: "fate-pisces")
                labelText.text = "雙魚座"
            }
            break;
        case 3:
            if(i_day>=1 && i_day<=20){
                imageView.image = UIImage(named: "fate-pisces")
                labelText.text = "雙魚座"
            }
            if(i_day>=21 && i_day<=31){
                imageView.image = UIImage(named: "fate-aries")
                labelText.text = "牡羊座"
            }
            break;
        case 4:
            if(i_day>=1 && i_day<=19){
                imageView.image = UIImage(named: "fate-aries")
                labelText.text = "牡羊座"
            }
            if(i_day>=20 && i_day<=31){
                imageView.image = UIImage(named: "fate-taurus")
                labelText.text = "金牛座"
            }
            break;
        case 5:
            if(i_day>=1 && i_day<=20){
                imageView.image = UIImage(named: "fate-taurus")
                labelText.text = "金牛座"
            }
            if(i_day>=21 && i_day<=31){
                imageView.image = UIImage(named: "fate-gemini")
                labelText.text = "雙子座"
            }
            break;
        case 6:
            if(i_day>=1 && i_day<=21){
                imageView.image = UIImage(named: "fate-gemini")
                labelText.text = "雙子座"
            }
            if(i_day>=22 && i_day<=31){
                imageView.image = UIImage(named: "fate-cancer")
                labelText.text = "巨蟹座"
            }
            break;
        case 7:
            if(i_day>=1 && i_day<=22){
                imageView.image = UIImage(named: "fate-cancer")
                labelText.text = "巨蟹座"
            }
            if(i_day>=23 && i_day<=31){
                imageView.image = UIImage(named: "fate-leo")
                labelText.text = "獅子座"
            }
            break;
        case 8:
            if(i_day>=1 && i_day<=22){
                imageView.image = UIImage(named: "fate-leo")
                labelText.text = "獅子座"
            }
            if(i_day>=23 && i_day<=31){
                imageView.image = UIImage(named: "fate-virgo")
                labelText.text = "處女座"
            }
            break;
        case 9:
            if(i_day>=1 && i_day<=22){
                imageView.image = UIImage(named: "fate-virgo")
                labelText.text = "處女座"
            }
            if(i_day>=23 && i_day<=31){
                imageView.image = UIImage(named: "fate-libra")
                labelText.text = "天秤座"
            }
            break;
        case 10:
            if(i_day>=1 && i_day<=23){
                imageView.image = UIImage(named: "fate-libra")
                labelText.text = "天秤座"
            }
            if(i_day>=24 && i_day<=31){
                imageView.image = UIImage(named: "fate-scorpio")
                labelText.text = "天蠍座"
            }
            break;
        case 11:
            if(i_day>=1 && i_day<=21){
                imageView.image = UIImage(named: "fate-scorpio")
                labelText.text = "天蠍座"
            }
            if(i_day>=22 && i_day<=31){
                imageView.image = UIImage(named: "fate-sagittarius")
                labelText.text = "射手座"
            }
            break;
        case 12:
            if(i_day>=1 && i_day<=21){
                imageView.image = UIImage(named: "fate-sagittarius")
                labelText.text = "射手座"
            }
            if(i_day>=21 && i_day<=31){
                imageView.image = UIImage(named: "fate-capricorn")
                labelText.text = "摩羯座"
            }
            break;
        default:
            break
        }
        }
        if segmentControl.selectedSegmentIndex == 0{
            switch(yearPet){// 0 猴 1 雞 2 狗 3 豬 4 鼠 5 牛 6 虎 7 兔 8 龍 9 蛇 10 馬 11 羊
            case 0: imageView.image = UIImage(named: "fate-monkey")
                    labelText.text = "猴"
            case 1: imageView.image = UIImage(named: "fate-cock")
                    labelText.text = "雞"
            case 2: imageView.image = UIImage(named: "fate-dog")
                    labelText.text = "狗"
            case 3: imageView.image = UIImage(named: "fate-boar")
                    labelText.text = "豬"
            case 4: imageView.image = UIImage(named: "fate-rat")
                    labelText.text = "鼠"
            case 5: imageView.image = UIImage(named: "fate-ox")
                    labelText.text = "牛"
            case 6: imageView.image = UIImage(named: "fate-tiger")
                    labelText.text = "虎"
            case 7: imageView.image = UIImage(named: "fate-hare")
                    labelText.text = "兔"
            case 8: imageView.image = UIImage(named: "fate-dragon")
                    labelText.text = "龍"
            case 9: imageView.image = UIImage(named: "fate-snake")
                    labelText.text = "蛇"
            case 10: imageView.image = UIImage(named: "fate-horse")
                    labelText.text = "馬"
            case 11: imageView.image = UIImage(named: "fate-sheep")
                    labelText.text = "羊"
            default:
                break
            }
        }
    }
    @IBAction func resetButton(_ sender: Any) {
        let nowDate: Date = Date()
        datePicker.setDate(nowDate, animated: false)
    }
    
    @IBAction func changeSlider(_ sender: Any) {
        let sliderNumber = Int(slider.value)
        //labelText.text =  String(sliderNumber)
        
        if segmentControl.selectedSegmentIndex == 0 {
        switch sliderNumber {
        case 1: imageView.image = UIImage(named: "fate-rat")
            case 2: imageView.image = UIImage(named: "fate-ox")
            case 3: imageView.image = UIImage(named: "fate-tiger")
            case 4: imageView.image = UIImage(named: "fate-hare")
            case 5: imageView.image = UIImage(named: "fate-dragon")
            case 6: imageView.image = UIImage(named: "fate-snake")
            case 7: imageView.image = UIImage(named: "fate-horse")
            case 8: imageView.image = UIImage(named: "fate-sheep")
            case 9: imageView.image = UIImage(named: "fate-monkey")
            case 10: imageView.image = UIImage(named: "fate-cock")
            case 11: imageView.image = UIImage(named: "fate-dog")
            case 12: imageView.image = UIImage(named: "fate-boar")
            default:
                break
            }
        }
        if segmentControl.selectedSegmentIndex == 1 {
            switch sliderNumber {
            case 1: imageView.image = UIImage(named: "fate-aries")
            case 2: imageView.image = UIImage(named: "fate-taurus")
            case 3: imageView.image = UIImage(named: "fate-gemini")
            case 4: imageView.image = UIImage(named: "fate-cancer")
            case 5: imageView.image = UIImage(named: "fate-leo")
            case 6: imageView.image = UIImage(named: "fate-virgo")
            case 7: imageView.image = UIImage(named: "fate-libra")
            case 8: imageView.image = UIImage(named: "fate-scorpio")
            case 9: imageView.image = UIImage(named: "fate-sagittarius")
            case 10: imageView.image = UIImage(named: "fate-capricorn")
            case 11: imageView.image = UIImage(named: "fate-aquarius")
            case 12: imageView.image = UIImage(named: "fate-pisces")
            default:
                break
            }
        }
    }
    
    @IBAction func changeSegment(_ sender: Any) {
      
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "zh_TW")
        formatter.dateFormat = "MM/dd/yyyy"
        let date_dob = datePicker.date
        //抓年份
        let dateFormatterYear = DateFormatter()
        dateFormatterYear.dateFormat = "y"
        let year = dateFormatterYear.string(from: date_dob)
        //抓月份
        let dateFormatterMonth = DateFormatter()
        dateFormatterMonth.dateFormat = "M"
        let month = dateFormatterMonth.string(from: date_dob)
        //抓日
        let dateFormatterDay = DateFormatter()
        dateFormatterDay.dateFormat = "d"
        let day = dateFormatterDay.string(from: date_dob)
        
        
        labelText.text = month + day
        let i_month = Int(month)
        let i_day = Int(day)!
        let i_year = Int(year)!
        let yearPet = (i_year%12) // 0 猴 1 雞 2 狗 3 豬 4 鼠 5 牛 6 虎 7 兔 8 龍 9 蛇 10 馬 11 羊
        labelText.text = String(yearPet)
        if segmentControl.selectedSegmentIndex == 1{
            switch (i_month) {
            case 1:
                if(i_day >= 20 && i_day <= 31){
                    imageView.image = UIImage(named: "fate-aquarius")
                    labelText.text = "水瓶座"
                }
                if(i_day>=1 && i_day<=19){
                    imageView.image = UIImage(named: "fate-capricorn")
                    labelText.text = "摩羯座"
                }
                break;
            case 2:
                if(i_day>=1 && i_day<=18){
                    imageView.image = UIImage(named: "fate-aquarius")
                    labelText.text = "水瓶座"
                }
                if(i_day>=19 && i_day<=31){
                    imageView.image = UIImage(named: "fate-pisces")
                    labelText.text = "雙魚座"
                }
                break;
            case 3:
                if(i_day>=1 && i_day<=20){
                    imageView.image = UIImage(named: "fate-pisces")
                    labelText.text = "雙魚座"
                }
                if(i_day>=21 && i_day<=31){
                    imageView.image = UIImage(named: "fate-aries")
                    labelText.text = "牡羊座"
                }
                break;
            case 4:
                if(i_day>=1 && i_day<=19){
                    imageView.image = UIImage(named: "fate-aries")
                    labelText.text = "牡羊座"
                }
                if(i_day>=20 && i_day<=31){
                    imageView.image = UIImage(named: "fate-taurus")
                    labelText.text = "金牛座"
                }
                break;
            case 5:
                if(i_day>=1 && i_day<=20){
                    imageView.image = UIImage(named: "fate-taurus")
                    labelText.text = "金牛座"
                }
                if(i_day>=21 && i_day<=31){
                    imageView.image = UIImage(named: "fate-gemini")
                    labelText.text = "雙子座"
                }
                break;
            case 6:
                if(i_day>=1 && i_day<=21){
                    imageView.image = UIImage(named: "fate-gemini")
                    labelText.text = "雙子座"
                }
                if(i_day>=22 && i_day<=31){
                    imageView.image = UIImage(named: "fate-cancer")
                    labelText.text = "巨蟹座"
                }
                break;
            case 7:
                if(i_day>=1 && i_day<=22){
                    imageView.image = UIImage(named: "fate-cancer")
                    labelText.text = "巨蟹座"
                }
                if(i_day>=23 && i_day<=31){
                    imageView.image = UIImage(named: "fate-leo")
                    labelText.text = "獅子座"
                }
                break;
            case 8:
                if(i_day>=1 && i_day<=22){
                    imageView.image = UIImage(named: "fate-leo")
                    labelText.text = "獅子座"
                }
                if(i_day>=23 && i_day<=31){
                    imageView.image = UIImage(named: "fate-virgo")
                    labelText.text = "處女座"
                }
                break;
            case 9:
                if(i_day>=1 && i_day<=22){
                    imageView.image = UIImage(named: "fate-virgo")
                    labelText.text = "處女座"
                }
                if(i_day>=23 && i_day<=31){
                    imageView.image = UIImage(named: "fate-libra")
                    labelText.text = "天秤座"
                }
                break;
            case 10:
                if(i_day>=1 && i_day<=23){
                    imageView.image = UIImage(named: "fate-libra")
                    labelText.text = "天秤座"
                }
                if(i_day>=24 && i_day<=31){
                    imageView.image = UIImage(named: "fate-scorpio")
                    labelText.text = "天蠍座"
                }
                break;
            case 11:
                if(i_day>=1 && i_day<=21){
                    imageView.image = UIImage(named: "fate-scorpio")
                    labelText.text = "天蠍座"
                }
                if(i_day>=22 && i_day<=31){
                    imageView.image = UIImage(named: "fate-sagittarius")
                    labelText.text = "射手座"
                }
                break;
            case 12:
                if(i_day>=1 && i_day<=21){
                    imageView.image = UIImage(named: "fate-sagittarius")
                    labelText.text = "射手座"
                }
                if(i_day>=21 && i_day<=31){
                    imageView.image = UIImage(named: "fate-capricorn")
                    labelText.text = "摩羯座"
                }
                break;
            default:
                break
            }
        }
        if segmentControl.selectedSegmentIndex == 0{
            switch(yearPet){// 0 猴 1 雞 2 狗 3 豬 4 鼠 5 牛 6 虎 7 兔 8 龍 9 蛇 10 馬 11 羊
            case 0: imageView.image = UIImage(named: "fate-monkey")
            labelText.text = "猴"
            case 1: imageView.image = UIImage(named: "fate-cock")
            labelText.text = "雞"
            case 2: imageView.image = UIImage(named: "fate-dog")
            labelText.text = "狗"
            case 3: imageView.image = UIImage(named: "fate-boar")
            labelText.text = "豬"
            case 4: imageView.image = UIImage(named: "fate-rat")
            labelText.text = "鼠"
            case 5: imageView.image = UIImage(named: "fate-ox")
            labelText.text = "牛"
            case 6: imageView.image = UIImage(named: "fate-tiger")
            labelText.text = "虎"
            case 7: imageView.image = UIImage(named: "fate-hare")
            labelText.text = "兔"
            case 8: imageView.image = UIImage(named: "fate-dragon")
            labelText.text = "龍"
            case 9: imageView.image = UIImage(named: "fate-snake")
            labelText.text = "蛇"
            case 10: imageView.image = UIImage(named: "fate-horse")
            labelText.text = "馬"
            case 11: imageView.image = UIImage(named: "fate-sheep")
            labelText.text = "羊"
            default:
                break
            }
        }
    }
    

}

