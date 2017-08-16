//
//  ViewController.swift
//  AlertSample
//
//  Created by ktds 20 on 2017. 8. 16..
//  Copyright © 2017년 CJON, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func openActionSheet(_ sender: Any) {
        let alert = UIAlertController(title:"알림",
                                      message:"메세지 내영",
                                      preferredStyle: .actionSheet)
        
        let cancelBtn = UIAlertAction(title: "취소", style: .cancel, handler: {(UIAlertAction) -> Void in
            print("취소함")
        })
        
        
        let facebookBtn = UIAlertAction(title: "Facebook", style: .default) {
            (UIApplication) -> Void in
            print("Facebook 선택함")
        }
        
        let twitterBtn = UIAlertAction(title: "Twitter", style: .default) {
            (UIApplication) -> Void in
            print("Twitter 선택함")
        }
        
        alert.addAction(cancelBtn)
        alert.addAction(facebookBtn)
        alert.addAction(twitterBtn)
        
        
        self.present(alert, animated: true, completion: {() -> Void in
            print("Show Action Sheet")
        })
        
    }
    
    @IBAction func openAlert(_ sender: Any) {
        let loginAlert = UIAlertController(title: "로그인", message: "아이디와 패스워드를 입력하세요.", preferredStyle: .alert)
        
        loginAlert.addTextField(configurationHandler: {
            textField in
            textField.placeholder = "아이디"
        })
        
        loginAlert.addTextField(configurationHandler: {
            textField in
            textField.placeholder = "패스워드"
            textField.isSecureTextEntry = true
        })
        
        let cancelBtn = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let confirmBtn = UIAlertAction(title: "확인", style: .default, handler: {
            alertAction in
            let id = loginAlert.textFields?[0].text
            let pw = loginAlert.textFields?[1].text
            
            if id == "test" && pw == "1234" {
                print("성공")
            }else{
                print("실패")
            }
        })
        
        loginAlert.addAction(cancelBtn)
        loginAlert.addAction(confirmBtn)
        
        self.present(loginAlert, animated: true, completion: nil)
        
    }
    
    
    @IBOutlet weak var openActionSheet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

