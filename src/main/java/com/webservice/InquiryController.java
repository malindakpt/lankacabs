package com.webservice;

import com.entity.Vehicle;
import com.persistance.DataSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.sql.rowset.spi.SyncProvider;

/**
 * Created by MalindaK on 6/17/2015.
 */

@Controller
@RequestMapping("/")
public class InquiryController {
//    @RequestMapping(method = RequestMethod.GET)
//    public String printWelcome(ModelMap model) {
//        model.addAttribute("message", "");
//        return "hello";
//    }


//    @RequestMapping(value = "/addStudent", method = RequestMethod.POST)
//    public String addStudent(@ModelAttribute("SpringWeb")Vehicle vehicle,
//                             ModelMap model) {
//        model.addAttribute("name", vehicle.getREGNO());
////        model.addAttribute("age", student.getAge());
////        model.addAttribute("id", student.getId());
//
//        return "hello";
//    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView student() {
        return new ModelAndView("welcome", "command", new Vehicle());
    }

    @RequestMapping(value = "/addStudent", method = RequestMethod.POST)
    public String addStudent(@ModelAttribute("SpringWeb")Vehicle vehicle,
                             ModelMap model) {
        model.addAttribute("name", vehicle.getREGNO());

        DataSource.getInstance().addVehicle(vehicle);

        System.out.println(vehicle);
        return "hello";
    }
}
