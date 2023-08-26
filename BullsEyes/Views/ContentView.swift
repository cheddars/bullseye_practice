import SwiftUI

struct ContentView: View {
  @State private var sliderValue = 40.0
  @State private var alertIsVisible: Bool = false
  @State private var game: Game = Game()
  var body: some View {
    
    VStack {
      Text("🎯🎯🎯\nPut the bullsyee as close as you can do".uppercased())
        .bold()
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .kerning(1.0)
      Text(String(game.target))
        .kerning(-1)
        .font(.largeTitle)
        .fontWeight(.black)
      HStack{
        Text("1")
          .bold()
        Slider(value: $sliderValue, in: 1...100)
        Text("100")
          .bold()
      }
      Button("Hit me"){
        alertIsVisible = true
      }.alert(
        "this is title",
        isPresented: $alertIsVisible,
        actions: {
          Button("OK"){
            
          }
        },
        message: {
          var roundedValue: Int = Int(sliderValue.rounded())
          Text("""
            This is first Message \(roundedValue).
            You scored \(game.points(sliderValue: roundedValue)) points this round
          """)
        }
      )
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
