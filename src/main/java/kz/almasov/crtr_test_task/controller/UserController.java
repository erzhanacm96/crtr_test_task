package kz.almasov.crtr_test_task.controller;

import kz.almasov.crtr_test_task.entity.User;
import kz.almasov.crtr_test_task.service.UserService;
import kz.almasov.crtr_test_task.util.PaginationManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private PaginationManager<User> paginationManager;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @GetMapping("/list")
    public String userListPage(
            Model model,
            @PageableDefault(sort = {"id"}, direction = Sort.Direction.DESC) org.springframework.data.domain.Pageable pageable
    ) {
        Page<User> page = userService.getUserPage(pageable);
        List<Integer> bodyForPagination = paginationManager.getBody(page);

        model.addAttribute("page", page);
        model.addAttribute("userList", page.getContent());
        model.addAttribute("url", "/user/list");
        model.addAttribute("body", bodyForPagination);
        return "userList";
    }

    @PostMapping("/addUser")
    public String addUser(
            @Valid User user,
            BindingResult bindingResult,
            Model model
    ) {
        String birthday = ControllerUtil.getFormatedDate(user.getBirthday());
        if (bindingResult.hasErrors()) {
            Map<String, String> errorsMap = ControllerUtil.getErrors(bindingResult);
            model.mergeAttributes(errorsMap);
            model.addAttribute("user", user);
            model.addAttribute("selectedDate", birthday);
            return "home";
        } else {
            userService.addUser(user);
            return "redirect:/";
        }
    }


}
