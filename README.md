# code_Athlon_QRscanner

An iOS app base on scanSwift api, it's be able to scan QRcode and get json from server to compare scan result and json(the passcode which generat the qrcode)

## Notes before Started

First time write request in swift. Learned get and post request, and json. Created it under 15 hours, so if there are bugs, I will not be superise. "ScanResultController.swift" is where get requests are.

### Prerequisites

* Xcode
* Swift 3+
* cocoapods
* scanSwift 

### How to use

1. Clone the repo into any folder.
2. Open QRcodeSelfPickUp.xcworkspace
3. Under ScanResultController.swift replace server address to your own

```
guard let url = URL(string: "*****your url*****") else { return }
```

4. Try to build it and run on either your iphone or simulator

### Something I want to say

* __About this Project__  - This project is created during 2017 Homedepot <code_athlon/> under 15 hours.
* __More.__ - This is not 100% done. There must have bugs in somewhere. 
* __what I done so far ?__ - qrcode scanner, get method which will allow me get json from specific url
* __what I need to do in the further ?__ - 1. connect database for login page. 2. write post method to push json to server

If you have any questions, feel free to contact me.

Best of luck.

----------------------

Kai Deng

<wxfkkrrt@gmail.com>

2017-09-17

---------------------- 
