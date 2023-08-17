package com.libmanage.www.enity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book {

//    书本编号
    private int booknumber;
//    书名
    private String bookname;
//    作者
    private String author;
//    价格
    private float price;
//    书架号
    private int pressmark;
//    类别
    private String sort;
//    数量
    private int count;
}




