package example;

import ua.com.javacources.Shakespeare;
import ua.com.javacources.ShakespeareSoap;

/**
 * Created by Oleg on 29.03.14.
 */
public class HelloWorldClient {
  public static void main(String[] argv) {
      ShakespeareSoap service = new Shakespeare().getShakespeareSoap();
      //invoke business method
      System.out.println(service.getSpeech("romeo"));
  }
}
