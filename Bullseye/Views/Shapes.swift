import SwiftUI

struct Shapes: View {
  var body: some View {
    VStack {
      Circle()
        .strokeBorder(Color.blue, lineWidth: 20)
        .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
        .background(Color.green)
      RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
        .fill(Color.blue)
        .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
      Capsule()
        .fill(Color.blue)
        .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
      Ellipse()
        .fill(Color.blue)
        .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
    }
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
