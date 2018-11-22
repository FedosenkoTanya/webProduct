package springboot.controller;

import com.sun.deploy.cache.InMemoryLocalApplicationProperties;
import globalmarket.model.Currency;
import globalmarket.model.Money;
import globalmarket.service.CurrencyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import springboot.InMemoryMessageRepository;
import springboot.Product;

import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

@Controller
public class MyWebController {
    InMemoryMessageRepository productList = new InMemoryMessageRepository();

    @GetMapping
    public String index(Model model){

        return "index";
    }

    @GetMapping ("/form")
    public String form(Model model){

        return "form";
    }

    @PostMapping("/form")
    public ModelAndView formsave(Product product){
        productList.save(product);
        System.out.println("!!!!!!!!!!!!!! " + productList.findAll());



        ModelAndView model = new ModelAndView("list");

//        model.addAttribute("listProduct", productList.findAll());
        model.addObject("listProduct", productList.findAll());

        return model;
    }


}
