package jayshawn.helloworld;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/jayshawn")
@Controller
public class HelloWorld {

	@RequestMapping("/helloworld.do")
	public String helloworld(){
		System.out.println("helloworld...");
		return "success";
	}
	
	
	@RequestMapping("/testPathVariable/{id}.do")
	public String testPathVariable(@PathVariable("id") Integer id){
		System.out.println("testPathVariable " +id);
		return "success";
	}
	
	@RequestMapping(value="/testRest/{id}.do" ,method=RequestMethod.GET)
	public String testRest(@PathVariable("id") Integer id){
		System.out.println("testRest" +id);
		return "success";
	}
	
	@RequestMapping(value="/testRequestParam.do" ,method=RequestMethod.POST)
	public String testRequestParam(@RequestParam(value="username", required=false) String username, @RequestParam("age") Integer age, 
			@RequestHeader("Accept-Encoding") String encoding, @RequestHeader("Cookie") String cookie){
		System.out.println("username: "+username+" age: "+age);
		System.out.println(encoding);
		System.out.println(cookie);
		return "success";
	}
	
	@RequestMapping("/testPOJO.do")
	public String testPOJO(User user){
		System.out.println(user);
		return "success";
	}
	
	@RequestMapping("/testModelAndView.do")
	public ModelAndView testModelAndView(){
		ModelAndView modelAndView = new ModelAndView("success");
		modelAndView.addObject("user", new User(1, "BB", 18));
		return modelAndView;
	}
	
//	@ModelAttribute
//	public void testModelAttribute(@RequestParam Integer id ,Model model){
//		if(id!=null)
//			model.addAttribute("user", new User(1,"AA",18));
//	}

	
	@RequestMapping("/editUser.do")
	public String editUser(User user){
		return "edit";
	}
	
	@RequestMapping("/updateUser.do")
	public String updateUser(User user3, @ModelAttribute("user") User user){
		System.out.println(user);
		System.out.println(user3);
		return "update";
	}
	
	@RequestMapping("/testI18N.do")
	public String testI18N(){
		return "i18n";
	}
	@RequestMapping("/testView.do")
	public String testHelloView(){
		return "helloView";
	}
	
	
}
