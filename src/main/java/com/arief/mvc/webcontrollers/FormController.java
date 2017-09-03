package com.arief.mvc.webcontrollers;

import com.arief.mvc.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Arief on 9/3/2017.
 */
@Controller
@RequestMapping("/user")
public class FormController {



    @RequestMapping( value = "/form",method = RequestMethod.GET)
    public ModelAndView formView(){
        return new ModelAndView("form","user",new User());
    }

    @RequestMapping(value = "/form",method = RequestMethod.POST)
    public String formUserResult(@ModelAttribute("user") User u , Model m ){
        m.addAttribute("user",u) ;
        return "result";
    }



}
