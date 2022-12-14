import Foundation
import UIKit

final public class Cici {
    
    var alertView = UIView()
    public var heightExtra = 0.0
    public var horizontalMargins = 0.0
    public var mesaggeTextColor = UIColor.white
    public var backgroundColor = UIColor.orange
    public var backroundImage = UIImageView()
    public var buttonBackroundColor = UIColor.red
    public var buttonWidth = 60.0
    public var view = UIView()
    public init() {}
    
    public func showAlert(messageText: String, buttonTitle: String) {
        blurEffect()
        let x = self.view.bounds.width
        let alertViewWidth = x - (2 * horizontalMargins)
        
        //MARK: Alertview
        alertView = UIView(frame: CGRect(x: 0 , y: 0, width: alertViewWidth, height: alertViewWidth + heightExtra) )
        alertView.center = view.center
        alertView.layer.cornerRadius = 5
        alertView.backgroundColor = backgroundColor
        if backroundImage.image != nil {
            backroundImage.frame = CGRect(x: 0, y: 0, width: alertViewWidth, height:  alertViewWidth + heightExtra)
            alertView.addSubview(backroundImage)
        }
        
        //MARK: Label
        let message = UILabel(frame: CGRect(x: 10, y: alertView.bounds.height  / 2 - 30, width: alertView.bounds.width - 20, height: 60))
        message.numberOfLines = 2
        message.textAlignment = .center
        message.textColor = mesaggeTextColor
        message.font = .systemFont(ofSize: 25)
        message.adjustsFontSizeToFitWidth = true
        message.text = messageText
        alertView.addSubview(message)
        
        //MARK: Button
        let button = UIButton(frame: CGRect(x: 10 , y: alertView.bounds.height - 40, width: buttonWidth, height: 30))
        button.layer.cornerRadius = 6
        button.setTitle(buttonTitle, for: UIControl.State.normal)
        button.backgroundColor = buttonBackroundColor
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        alertView.addSubview(button)
        self.view.addSubview(alertView)
        
        //MARK: Warning Image
        let warningImage = UIImageView(frame: CGRect(x: alertView.bounds.width / 2 - 32, y: -32, width: 65, height: 65))
        warningImage.image = UIImage(named: "warning")
        alertView.addSubview(warningImage)
    }
    
    //MARK: BlurEffect
    func blurEffect() {
        
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(blurEffectView)
    }
    
    func removeBlurView() {
        for subview in view.subviews {
            if subview.isKind(of: UIVisualEffectView.self) {
                subview.removeFromSuperview()
            }
        }
    }
    
    @objc func buttonAction() { self.alertView.isHidden = true
        for subview in view.subviews {
            if subview.isKind(of: UIVisualEffectView.self) {
                subview.removeFromSuperview()
            }
        }
    }
}
