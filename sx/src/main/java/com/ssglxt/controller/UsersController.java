package com.ssglxt.controller;

import com.ssglxt.service.Userservice;
import com.ssglxt.doman.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController //添加到ioc容器
@RequestMapping("/users")//设置访问路径
@CrossOrigin//解决跨域问题
public class UsersController {
    @Autowired
    private Userservice usersService;
    @GetMapping //访问方式
    public List<Users> getAll(){
        return usersService.list();
    }
    public boolean update(@RequestBody Users users){
        return usersService.updateById(users);
    }
    @GetMapping("/{id}")
    public Users getByid(@PathVariable int id){
        return  usersService.getById(id);
    }
}
