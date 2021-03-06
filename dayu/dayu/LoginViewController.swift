//
//  LoginViewController.swift
//  dayu
//
//  Created by Xinger on 15/8/28.
//  Copyright (c) 2015年 Xinger. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var utfUsername: UITextField!
    
    @IBOutlet weak var utfPwd: UITextField!

    @IBAction func login(sender: AnyObject) {
        var params = ["tel": utfUsername.text, "password": utfPwd.text]
        
        HttpUtil.post(URLConstants.loginUrl, params: params, success: {(response:AnyObject!) in
            println(response)
            var stat = response["stat"] as String;
            
            if stat == "ERR_TEL_OR_PWD" {
                ViewUtil.showAlertView("登录失败", message:"用户名或密码错误!", view: self)
            } else if stat == "OK" {
                //self.app.token = response["token"] as String
                var user = User.getUser(response["user"] as NSDictionary)
                println((response["user"] as NSDictionary)["id"])
            }
            }, failure:{(error:NSError!) in
                println(error.localizedDescription)
        })

    }

}
