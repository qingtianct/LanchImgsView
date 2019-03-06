//
//  ViewController.swift
//  LanchImgsView
//
//  Created by 1295890900@qq.com on 03/06/2019.
//  Copyright (c) 2019 1295890900@qq.com. All rights reserved.
//

import UIKit
import LanchImgsView

let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height

class ViewController: UIViewController {

    let imgArr:[String] = ["http://dangjian-limin.oss-cn-hangzhou.aliyuncs.com/yDW8AMypGk%40upload_7003847316dcf7c72efae535976c9cf4.png","ttp://dangjian-limin.oss-cn-hangzhou.aliyuncs.com/kKzT5C8CJD%40upload_1c350f4079b895503272333d2d48704d.png","http://dangjian-limin.oss-cn-hangzhou.aliyuncs.com/snmBjTjCFp%40upload_adc7178eb81befb233ab02c5b8aac78e.jpg","http://dangjian-limin.oss-cn-hangzhou.aliyuncs.com/eXdzaKPdxx%40upload_0a7dce1611e25c59c12421eac541406b.png","http://dangjian-limin.oss-cn-hangzhou.aliyuncs.com/F62ZK5THNx%40upload_64caaceabaee5ec90e50ce1af5e19632.png"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.dataInit()
    }

    func dataInit(){
        var modelArr:[ImageModel] = []
        for str in imgArr{
            let model = ImageModel.init(url: str, placeholder: UIImage.init(named: "1") ?? UIImage.init())
            
            modelArr.append(model)
        }
        
        
        let backV = BaseView.init(frame: CGRect.init(x: 0, y: 100, width: screenWidth, height: screenWidth*CGFloat(4/3)))
         
        self.view.addSubview(backV)
        
        backV.addImgs(imgs: modelArr)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

