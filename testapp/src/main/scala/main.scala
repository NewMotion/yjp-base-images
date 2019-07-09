
import scala.math._
import scala.io.StdIn._

object Main extends App {
  println("How accurate do you want PI to be (number of loops)")

  val loops = if (args.length == 0) readInt()
              else Integer.parseInt(args(0))
  //Show the user the value.
  val pi = picalc(loops)
  println(pi)

  def picalc(loops: Int): Double = {
    //Set some initial values.
    var pi: Double = 0
    var n = 0
    while (n < loops) {
      pi = pi + (pow(-1,n)/(2*n+1))
      n = n+1
    }
    pi*4
  }
}