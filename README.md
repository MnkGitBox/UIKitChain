![banner](UIKitChain_Banner.png)

[![Version](https://img.shields.io/cocoapods/v/UIKitChain.svg?style=flat)](https://cocoapods.org/pods/UIKitChain)
[![License](https://img.shields.io/cocoapods/l/UIKitChain.svg?style=flat)](https://cocoapods.org/pods/UIKitChain)
[![Platform](https://img.shields.io/cocoapods/p/UIKitChain.svg?style=flat)](https://cocoapods.org/pods/UIKitChain)
![SPM](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-orange)

Using the UIKitChain framework, You can create a UIKit component in one line of code.
<br>

### Installation

#### CocoaPods
[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```ruby
$ gem install cocoapods
```
To integrate UIKitChain into your Xcode project using CocoaPods, specify it in your Podfile:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '12.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'UIKitChain', '~> 1.0.0'
end
```
Then, run the following command:
```ruby
$ pod install
```

#### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

> Xcode 11+ is required to build UIKitChain using Swift Package Manager.

```Swift
dependencies: [
    .package(url: "https://github.com/MnkGitBox/UIKitChain.git", .upToNextMajor(from: "1.0.0"))
]
```

#### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate UIKitChain into your project manually.

---

### Usage
Call the `.chain` method right after initializing the UI element. Then you can configure the element using dot notation and finally call `.component` to get your complete view element.
 -  Without UIKitChain
```Swift 
let circleView = UIView()
circleView.backgroundColor = .green
circleView.layer.cornerRadius = 50
circleView.layer.borderColor = UIColor.black.cgColor
circleView.layer.borderWidth = 1
circleView.clipsToBounds = true
circleView.translatesAutoresizingMaskIntoConstraints = false
```
 - With UIKitChain
```Swift
let circleView = UIView().chain.bgColor(.green).cornerRadius(50).clipToBounds(true).border(.black).activeAutoConstrant(false).component
```

### Add Missing Method or Variable

If there is any missing method or variable, You can add by extending the `UIKitChain` with the corresponding *UIKit element*.

```Swift
extension UIKitChain where Component: UIView {
    @discardableResult
    func roundView() -> Self {
        component.layer.cornerRadius = component.bounds.height/2
        return self
    }
}
```
### Resources

You can find the original sample code [here](SampleCode.swift).

## Credits
- Malith Nadeeshan ([malithnadeeshan](https://twitter.com/malithnadeeshan))

## License

UIKitChain is released under the MIT license. See LICENSE for details.
