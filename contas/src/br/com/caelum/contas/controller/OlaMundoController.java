package br.com.caelum.contas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OlaMundoController {
  @RequestMapping("/olaMundoSpring")
  public String execute() {
    System.out.println("Executando a lógica com Spring MVC");
    return "ok";
  }
  /*public static void main(String[] args) { SpringApplication.run(PedroSpringApplication.class, args);

    String teste = "Teste";

    Map<String, Integer> vehicles = new HashMap<>();

    vehicles.put("BMW", 5);
    vehicles.put("Mercedes", 3);
    vehicles.put("Audi", 4);
    vehicles.put("Ford", 10);

    //String searchKey = "JJJ";
    if (vehicles.containsKey("Ford"))
        System.out.println("Found total " + vehicles.get("Ford") + " " + "Ford" + " cars!\n");

    // Clear all values.
    vehicles.clear();

    // Equals to zero.
    System.out.println("After clear operation, size: " + vehicles.size());
}*/
}
