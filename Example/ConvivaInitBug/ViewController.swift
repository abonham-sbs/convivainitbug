//
//  ViewController.swift
//  ConvivaInitBug
//
//  Created by Aaron Bonham on 08/13/2019.
//  Copyright (c) 2019 Aaron Bonham. All rights reserved.
//

import UIKit
import ConvivaAVFoundation
import ConvivaCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LivePass.initWithCustomerKey("b800410803a4659ffcd7b9b6577a907110b7aa21")
        LivePass.toggleTraces(true)
        let convivaMetadata = ConvivaContentInfo.createInfoForLightSession(withAssetName: "Conviva Init Bug") as! ConvivaContentInfo
        let session = LivePass.createSession(withStreamer: nil, andConvivaContentInfo: convivaMetadata)
        let url = URL(string: "https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4")!
        session!.attachStreamer(AVPlayer(url: url))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
