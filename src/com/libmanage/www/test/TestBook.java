package com.libmanage.www.test;

import com.libmanage.www.dao.BookDao;
import com.libmanage.www.enity.Book;

import java.util.List;

public class TestBook {
    public static void main(String[] args) {
        /*查询所有书籍*/
//        List<Book> li3 = new BookDao().findAllBook();
//        for (Book news:li3){
//            System.out.println(news);
//        }


        /*根据书名查询*/
//        List<Book> li3 = new BookDao().findBooksByName("老人与海");
//        for (Book news:li3){
//            System.out.println(news);
//        }


        /*更改书名*/
//        if(new BookDao().changeBookname("红楼梦2","3")){
//            System.out.println("修改成功");
//        }else {
//            System.out.println("修改失败");
//        }

        /* 删除 */
        if(new BookDao().delBook("童年")){
            System.out.println("删除成功");
        }else {
            System.out.println("删除失败");
        }
    }
}
