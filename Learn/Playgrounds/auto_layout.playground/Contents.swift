// practicing auto layout programmatically

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let outerContainer = UIView()
        let topContainer = UIView()
        let bottomContainer = UIView()
        
        let logo = UILabel()
        
        let login = UILabel()
        let register = UILabel()
        
        outerContainer.translatesAutoresizingMaskIntoConstraints = false
        topContainer.translatesAutoresizingMaskIntoConstraints = false
        bottomContainer.translatesAutoresizingMaskIntoConstraints = false
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        login.translatesAutoresizingMaskIntoConstraints = false
        register.translatesAutoresizingMaskIntoConstraints = false
        
        outerContainer.backgroundColor = .black
//        topContainer.backgroundColor = .red
//        bottomContainer.backgroundColor = .blue

        logo.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        logo.text = "Test App"
        logo.textColor = .white
        
        login.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        login.text = "Login"
        login.textColor = .white
        
        register.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        register.text = "Register"
        register.textColor = .white
        
        topContainer.addSubview(logo)
        bottomContainer.addSubview(login)
        bottomContainer.addSubview(register)
        outerContainer.addSubview(topContainer)
        outerContainer.addSubview(bottomContainer)
        self.view = outerContainer
        
        // constraints
        NSLayoutConstraint.activate([
            // top anchor
            topContainer.topAnchor.constraint(equalTo: outerContainer.safeAreaLayoutGuide.topAnchor),
            topContainer.widthAnchor.constraint(equalTo: outerContainer.widthAnchor),
            topContainer.heightAnchor.constraint(equalTo: outerContainer.heightAnchor, multiplier: 0.5),

            // bottom anchor
            bottomContainer.bottomAnchor.constraint(equalTo: outerContainer.safeAreaLayoutGuide.bottomAnchor),
            bottomContainer.widthAnchor.constraint(equalTo: outerContainer.widthAnchor),
            bottomContainer.heightAnchor.constraint(equalTo: outerContainer.heightAnchor, multiplier: 0.5),
            
            // logo
            logo.centerXAnchor.constraint(equalTo: topContainer.centerXAnchor),
            logo.centerYAnchor.constraint(equalTo: topContainer.centerYAnchor),
            
            // login
            login.centerXAnchor.constraint(equalTo: bottomContainer.centerXAnchor),
            login.centerYAnchor.constraint(equalTo: bottomContainer.centerYAnchor, constant: -20),
            
            // register
            register.centerXAnchor.constraint(equalTo: bottomContainer.centerXAnchor),
            register.centerYAnchor.constraint(equalTo: bottomContainer.centerYAnchor),
        ])
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
