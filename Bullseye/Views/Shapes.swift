import SwiftUI

struct Shapes: View {
  var body: some View {
    VStack {
      Circle()
        .strokeBorder(Color.blue, lineWidth: 20)
        .frame(width: 200, height: 100)
        .background(Color.green)
      RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
        .fill(Color.blue)
        .frame(width: 200, height: 100)
      Capsule()
        .fill(Color.blue)
        .frame(width: 200, height: 100)
      Ellipse()
        .fill(Color.blue)
        .frame(width: 200, height: 100)
    }
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
