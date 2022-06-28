package com.ssglxt.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ssglxt.dao.UsersDao;
import com.ssglxt.doman.Users;
import com.ssglxt.service.Userservice;
import org.springframework.stereotype.Service;

@Service
public class UsersServiceImpl extends ServiceImpl<UsersDao, Users> implements Userservice {
}
