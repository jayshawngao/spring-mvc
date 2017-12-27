package jayshawn.crud;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/crud")
@Controller
public class CrudController {
	
	@Autowired
	private EmployeeDao employeeDao;
	
	@Autowired
	private DepartmentDao departmentDao;
	
	@ModelAttribute
	public Employee model(@RequestParam(value="id", required=false) Integer id){;
		Employee employee = null;
		if(id!=null) employee = employeeDao.get(id);
		return employee;
	}

	
	@RequestMapping("/emps.do")
	public String list(Map<String,Object> map){
		map.put("employees", employeeDao.getAll());

		return "emps"; 
	}
	
	@RequestMapping(value="/emp.do", method=RequestMethod.GET)
	public String input(Map<String, Object> map){
		map.put("departments", departmentDao.getDepartments()); //在新增员工页面中的部门下拉菜单中使用
		//不添加会报错  java.lang.IllegalStateException: 
		//Neither BindingResult nor plain target object for bean name 'command' available as request attribute
		map.put("employee", new Employee()); 
		return "input";
	}
	
	@RequestMapping(value="/emp.do", method=RequestMethod.POST)
	public String save(Employee employee){
		employeeDao.save(employee);
		return "redirect:/crud/emps.do";
	}
	
	@RequestMapping(value="/emp/{id}.do", method=RequestMethod.DELETE)
	public String delete(@PathVariable("id") Integer id){
		 employeeDao.delete(id);
		 return "redirect:/crud/emps.do";
	}
	@RequestMapping(value="/emp/{id}.do", method=RequestMethod.GET)
	public String input(@PathVariable("id") Integer id, Map<String, Object> map){
		map.put("employee", employeeDao.get(id));
		map.put("departments", departmentDao.getDepartments());
		return "input";
	}
	
	@RequestMapping(value="/emp.do" , method=RequestMethod.PUT)
	public String update(Employee employee){
		employeeDao.save(employee);
		return "redirect:/crud/emps.do";
	}
	
}
