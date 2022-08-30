
<p float="left">
  <img src="https://github.com/BurakAltunoluk/Cici/blob/main/Media.xcassets/Cici.png" width="100" >
</p>

<h1>Setup</h1> 

 <p>xode -> file -> add packages -> https://github.com/BurakAltunoluk/Cici.git -> Cici -> Add Package </p>
 
```swift
class Viewcontroller: UIViewController {
    let cici = Cici() //add 
    
 override func viewDidLoad() {
     super.viewDidLoad()
     cici.view = view //add
     } 
 }
 ```

 
 Ready to use...
 
<h1>Example</h1> 

```swift 
    func alertMenu() {
        
        cici.horizontalMargins = 30.0
        cici.showAlert(messageText: "HelloWorld", buttonTitle: "Ok")
        
    }
```

<h1>Features</h1> 

```swift 
        cici.backroundImage.image = UIImage(named: "imageName")   //to change backround image
        cici.buttonBackroundColor = . red                         //to change button backround color
        cici.mesaggeTextColor = .white                            //to change mesagge text color
        cici.backgroundColor = .orange                            //to change backround color
        cici.buttonWidth = 120.0                                  //button width
        cici.heightExtra = -40.0                                  //to change message box height bigger or smaller
        cici.horizontalMargins = 30.0                             //to change message box left/right blank
        cici.showAlert(messageText: "HelloWorld", buttonTitle: "Ok") //Show Alert box
```
