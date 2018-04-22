//
//  ViewController.swift
//  Language Switch Test
//
//  Created by Tim Lai on 21/04/2018.
//  Copyright © 2018 Tim Lai. All rights reserved.
//

import UIKit

class RegionReaderViewController: UIViewController {

    let userLocale = Locale.current
    
    @IBOutlet weak var deviceLanguageLabel: UILabel!
    @IBOutlet weak var deviceRegionLabel: UILabel!
    @IBOutlet weak var deviceMilesOrKmLabel: UILabel!
    @IBOutlet weak var changeLanguageSettingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.retrieveDeviceLanguageandRegionSettings()
    }

    func retrieveDeviceLanguageandRegionSettings() {
        deviceLanguageLabel.text = userLocale.languageCode
        deviceRegionLabel.text = userLocale.regionCode
        
        if (userLocale.usesMetricSystem) {
            deviceMilesOrKmLabel.text = "km"
        } else {
            deviceMilesOrKmLabel.text = "miles"
        }
    }
    
    func openSetting() {
        
    }

}

