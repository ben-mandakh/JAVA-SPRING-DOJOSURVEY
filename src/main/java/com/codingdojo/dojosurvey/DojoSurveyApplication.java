package com.codingdojo.dojosurvey;

////////////// START ////////////////////////////////////////////////

import javax.servlet.http.HttpSession;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@SpringBootApplication
@Controller
public class DojoSurveyApplication {

public static void main(String[] args) {
SpringApplication.run(DojoSurveyApplication.class, args);
}

///////// ROOT ROUTE //////////////////////////////////////////

@GetMapping("/")
public String index() {
return "index.jsp";
}

///////// PROCESS FUNCTION  ///////////////////////////////////////////

@PostMapping("/process")
public String process(HttpSession session, @RequestParam("name") String name, @RequestParam("location") String location, @RequestParam("language") String language, @RequestParam("comment") String comment) {
session.setAttribute("name", name);
session.setAttribute("location", location);
session.setAttribute("language", language);
session.setAttribute("comment", comment);

return "redirect:/result";
}

///////// ROOT: RESULT /////////////////////////////////////////

@RequestMapping("/result")
public String result() {
return "result.jsp";
}

}


//////////////// END /////////////////////////////////////////////