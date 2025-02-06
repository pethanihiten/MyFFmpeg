# MyFFmpeg

[![CI Status](https://img.shields.io/travis/pethanihiten@gmail.com/MyFFmpeg.svg?style=flat)](https://travis-ci.org/pethanihiten@gmail.com/MyFFmpeg)
[![Version](https://img.shields.io/cocoapods/v/MyFFmpeg.svg?style=flat)](https://cocoapods.org/pods/MyFFmpeg)
[![License](https://img.shields.io/cocoapods/l/MyFFmpeg.svg?style=flat)](https://cocoapods.org/pods/MyFFmpeg)
[![Platform](https://img.shields.io/cocoapods/p/MyFFmpeg.svg?style=flat)](https://cocoapods.org/pods/MyFFmpeg)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

MyFFmpeg is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MyFFmpeg'
```

## USED
To integrate the MobileFFmpeg class into your Swift project using a bridging header, follow these steps:

1. Create a Bridging Header:  

If your project doesn't already have a bridging header, you can create one:  
In Xcode, go to File > New > File....  
Select Header File and click Next.  
Name the file YourProjectName-Bridging-Header.h (replace YourProjectName with your actual project name) and click Create.  

Import MobileFFmpeg in the Bridging Header:
Add the import statement for MobileFFmpeg in your bridging header:

#import <mobileffmpeg/MobileFFmpeg.h>  
#import <mobileffmpeg/MobileFFmpegConfig.h>

```swift
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        MobileFFmpegConfig.setLogDelegate(self)
        MobileFFmpegConfig.setStatisticsDelegate(self)
        MobileFFmpegConfig.resetStatistics()

        let command = "-i input.mp4 output.avi"
        callCommand(command: command)
    }

    func callCommand(command: String) {
        DispatchQueue.global(qos: .userInitiated).async {
            MobileFFmpeg.execute(command)

            let rc: Int = Int(MobileFFmpeg.getLastReturnCode())
            let output = MobileFFmpeg.getLastCommandOutput()
            if rc == RETURN_CODE_SUCCESS {
                print("Command execution completed successfully.\n")
                MobileFFmpeg.cancel()
            } else if rc == RETURN_CODE_CANCEL {
                print("Command execution cancelled by user.\n")
            } else {
                print("Command execution failed with rc=\(rc) and output=\(String(describing: output!)).\n")
            }
        }
    }
}

extension ViewController: LogDelegate, StatisticsDelegate {
    func statisticsCallback(_ statistics: Statistics!) {
    }

    func logCallback(_ level: Int32, _ message: String!) {
    }
}
```

## Author

Hiten, pethanihiten@gmail.com

## License
MyFFmpeg is available under the MIT license. See the LICENSE file for more info.
