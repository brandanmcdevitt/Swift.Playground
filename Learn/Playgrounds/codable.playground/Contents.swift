// practicing codable with the icanhazdadjoke API
  
import UIKit
import PlaygroundSupport

struct Joke: Codable {
    var id: String
    var joke: String
    var status: Int
}

class MyViewController : UIViewController {
    let jokeLabel = UILabel()
    let fetchButton = UIButton()
    
    let session = URLSession.shared
    var request = URLRequest(url: URL(string: "https://icanhazdadjoke.com/")!)
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        jokeLabel.text = "Insert Joke Here"
        jokeLabel.sizeToFit()
        jokeLabel.numberOfLines = 0
        jokeLabel.textAlignment = .center
        jokeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        fetchButton.setTitle("Get Joke", for: .normal)
        fetchButton.titleLabel?.font = .systemFont(ofSize: 13)
        fetchButton.setTitleColor(.white, for: .normal)
        fetchButton.backgroundColor = UIColor(red: 100/255, green: 150/255, blue: 200/255, alpha: 1)
        fetchButton.layer.cornerRadius = 5
        fetchButton.translatesAutoresizingMaskIntoConstraints = false
        fetchButton.addTarget(self, action: #selector(action), for: .touchUpInside)
        
        view.addSubview(jokeLabel)
        view.addSubview(fetchButton)
        self.view = view
        
        NSLayoutConstraint.activate([
            // constraints for joke label
            jokeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            jokeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            jokeLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            
            // constraints for fetch button
            fetchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fetchButton.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            fetchButton.widthAnchor.constraint(equalToConstant: 90),
        ])
    }
    
    @objc func action(sender: UIButton!) {
        fetchJoke { joke in
            self.jokeLabel.text = joke
        }
    }
    
    func fetchJoke(completion: @escaping (String) -> Void) {
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = ["Accept": "application/json"]
        
        session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                do {
                    let jsonDecoder = JSONDecoder()
                    let responseModel = try jsonDecoder.decode(Joke.self, from: data!)
                    completion(responseModel.joke)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
