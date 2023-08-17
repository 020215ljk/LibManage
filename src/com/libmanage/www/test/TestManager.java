package com.libmanage.www.test;

import com.libmanage.www.dao.ManagerDao;
import com.libmanage.www.enity.Manager;

import java.util.List;

public class TestManager {
    public static void main(String[] args) {

        Manager manager = new ManagerDao().findManager("peter","123456");
        System.out.println("获取对象="+manager);
//        int row = manager;
//        if (row == 1){
//            System.out.println("查询到");
//        }else {
//            System.out.println("未查询到");
//        }

    }
}
