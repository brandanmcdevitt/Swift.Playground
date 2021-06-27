// practicing codable with the icanhazdadjoke API
  
import UIKit
import PlaygroundSupport
import Combine

struct Joke: Decodable {
    var joke: String
}

class MyViewController : UIViewController {
    enum FetchJoke {
        case completed(_: String)
        case error(_: FetchError)
    }
    
    enum FetchError: Error {
        case issueWithRequest
    }
    
    var publisher: AnyPublisher<FetchJoke, Never> {
        subject.eraseToAnyPublisher()
    }
    
    private let session = URLSession.shared
    private var request = URLRequest(url: URL(string: "https://icanhazdadjoke.com/")!)
    
    private let subject = PassthroughSubject<FetchJoke, Never>()
    private var cancellables: [AnyCancellable] = []
    
    private let jokeLabel: UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let fetchButton: UIButton = {
        let button = UIButton()
        button.setTitle("Get Joke", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 100/255, green: 150/255, blue: 200/255, alpha: 1)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let myView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    override func loadView() {
        self.view = myView
        
        view.addSubview(jokeLabel)
        view.addSubview(fetchButton)
        
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

        fetchButton.addAction(UIAction(handler: { [weak self] _ in
            self?.fetchJoke()
            
        }), for: .touchUpInside)
        
        publisher
            .sink { [weak self] result in
            switch result {
            case .completed(let joke): self?.jokeLabel.text = joke
            case .error(let error): self?.jokeLabel.text = error.localizedDescription
            }
        }.store(in: &cancellables)
    }
    
    private func fetchJoke() {
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = ["Accept": "application/json"]
        
        session.dataTask(with: request) { [weak self] data, _, error in
            DispatchQueue.main.async {
                do {
                    let jsonDecoder = JSONDecoder()
                    let responseModel = try jsonDecoder.decode(Joke.self, from: data!)
                    self?.subject.send(.completed(responseModel.joke))
                } catch {
                    self?.subject.send(.error(.issueWithRequest))
                }
            }
        }.resume()
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
