package com.ssglxt.doman;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("users")
@Data
public class Users {
    @TableId("user_id")
    private Integer userId;
    private String userName;
    private String userPassword;
}
