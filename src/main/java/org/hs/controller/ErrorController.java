package org.hs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorController {

	  @RequestMapping("/error404")
	    public String handle404() {
	        return "error404"; // error404.jsp로 이동하도록 설정하거나, 다른 적절한 방법으로 처리할 수 있습니다.
	    }
}
