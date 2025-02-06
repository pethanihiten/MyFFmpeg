//
//  ViewController.swift
//  MyFFmpegDemo
//
//  Created by Vedika on 06/02/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        MobileFFmpegConfig.setLogDelegate(self)
        MobileFFmpegConfig.setStatisticsDelegate(self)
        MobileFFmpegConfig.resetStatistics()

    }
}

extension ViewController:LogDelegate, StatisticsDelegate{
    func statisticsCallback(_ statistics: Statistics!) {

    }

    func logCallback(_ level: Int32, _ message: String!) {

    }
}
