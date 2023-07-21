import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("🎯🎯🎯\n PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        .kerning(2)
        .bold()
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      
      Text("89")
        .kerning(-1)
        .font(.largeTitle)
        .fontWeight(.black)
      
      HStack {
        Text("1")
          .bold()
        Slider(value: .constant(50), in:1.0...100.0)
        Text("100")
          .bold()
      }
      
      Button("Hit me") {
        
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewInterfaceOrientation(.portrait)
  }
}
