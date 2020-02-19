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
        
        /*
         colour the top and bottom containers to easily visualise the views
         
        topContainer.backgroundColor = .red
        bottomContainer.backgroundColor = .blue
         */

        logo.text = "Test App"
        logo.textColor = .white
        logo.textAlignment = .center
        
        login.text = "Login"
        login.textColor = .white
        login.textAlignment = .center
        
        register.text = "Register"
        register.textColor = .white
        register.textAlignment = .center
        
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
            logo.widthAnchor.constraint(equalToConstant: 80),
            logo.heightAnchor.constraint(equalToConstant: 20),
            
            // login
            login.centerXAnchor.constraint(equalTo: bottomContainer.centerXAnchor),
            login.centerYAnchor.constraint(equalTo: bottomContainer.centerYAnchor, constant: -20),
            login.widthAnchor.constraint(equalToConstant: 80),
            login.heightAnchor.constraint(equalToConstant: 20),
            
            // register
            register.centerXAnchor.constraint(equalTo: bottomContainer.centerXAnchor),
            register.centerYAnchor.constraint(equalTo: bottomContainer.centerYAnchor),
            register.widthAnchor.constraint(equalToConstant: 80),
            register.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
