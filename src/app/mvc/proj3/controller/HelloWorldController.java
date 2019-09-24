package app.mvc.proj3.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {
   
	
	@RequestMapping("/showForm")
	public String showForm() {
		
		return "hello_world_form";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld_resp";
	}
	
	//Using @RequestParam to get parameter via spring.
	@RequestMapping("/processForm1")
	public String returnModelDataReqParam( @RequestParam("studentName") String name, Model model) {
					
		name = name.toUpperCase();
				
		model.addAttribute("processedMessage", "Via @RequestParam: "+ name);
		
		return "helloworld_resp";
		
	}	
	
	//Using HttpServletRequest to get parameter.
	@RequestMapping("/processForm2")
	public String returnModelData(HttpServletRequest request, Model model) {
		
		String name = request.getParameter("studentName");
		
		name = name.toUpperCase();
				
		model.addAttribute("processedMessage", "Via HTTPRequest: "+ name);
		
		return "helloworld_resp";
		
	}
	
}
