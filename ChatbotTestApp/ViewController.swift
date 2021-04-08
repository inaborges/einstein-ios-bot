//
//  ViewController.swift
//  ChatbotTestApp
//
//  Created by Marina Borges on 12/14/20.
//  Copyright © 2020 Marina Borges. All rights reserved.
//

import UIKit
import ServiceChat

class ViewController: UIViewController {
    
    let POD = "d.la3-c1-ia4.salesforceliveagent.com"
    let ORG_ID = "00D4x0000024DYQ"
    let DEPLOYMENT_ID = "5724x0000008j0u"
    let BUTTON_ID = "5734x0000008jDi"
    
    var chatConfig: SCSChatConfiguration?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        chatConfig = SCSChatConfiguration(liveAgentPod: POD,
                                          orgId: ORG_ID,
                                          deploymentId: DEPLOYMENT_ID,
                                          buttonId: BUTTON_ID)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chatButtonTapped(_ sender: Any) {
        ServiceCloud.shared().chatUI.showChat(with: chatConfig!)
    }

}

