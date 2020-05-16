//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by Igor Guryan on 16.05.2020.
//  Copyright © 2020 Igor Guryan. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let themes = [
        "Sports":"🏐🎱🥎⚽️🏈🏹🏑🚣‍♀️🏋️‍♂️🎽💪🏀",
        "Animals":"🐘🦥🦧🦜🦞🐕‍🦺🦛🦘🐰🐱🐴🐔",
        "Faces":"🤓🤩🤭🥰🥱🥴🥺🥵🤬🤯🙄🤖",
    ]

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
                if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                    if let cvc = segue.destination as? ConcentrationViewController {
                        cvc.theme = theme
                    }
                }
            }
        }

}
