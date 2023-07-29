import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible = false
  @State private var sliderValue = 20.0
  @State private var game = Game()
  
  var body: some View {
    VStack {
      Text("🎯🎯🎯\n PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        .kerning(2)
        .bold()
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      
      Text(String(game.target))
        .kerning(-1)
        .font(.largeTitle)
        .fontWeight(.black)
      
      HStack {
        Text("1")
          .bold()
        Slider(value: $sliderValue, in:1.0...100.0)
        Text("100")
          .bold()
      }
      
      Button("Hit me") {
        alertIsVisible = true
      }
      .alert(
        "Hello there!",
        isPresented: $alertIsVisible,
        actions: {
          Button("Awesome") {
            print("Alert closed")
          }
        },
        message: {
          let roundedValue = Int(sliderValue.rounded())
          Text("""
            The slider's value is \(roundedValue).
            The number of points scored is \(game.points(sliderValue: roundedValue)).
          """)
        }
      )
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewInterfaceOrientation(.portrait)
  }
}
