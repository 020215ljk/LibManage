package com.libmanage.www.dao;

import com.libmanage.www.enity.Book;
import com.libmanage.www.tools.DaoFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;


/*查询所有*/
    public List<Book> findAllBook(){
        List<Book> list = new ArrayList<>();
        String sql = "Select * from book ORDER BY booknumber;";
        conn = DaoFactory.getConn();
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Book book = new Book(
                        rs.getInt("booknumber"),
                        rs.getString("bookname"),
                        rs.getString("author"),
                        rs.getFloat("price"),
                        rs.getInt("pressmark"),
                        rs.getString("sort"),
                        rs.getInt("count")
                );
                list.add(book);
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }



//增加书籍
    public boolean addBook(String booknumber,String bookname,String author,String price,String pressmark,String sort,String count){
        boolean flag = false;
        conn = DaoFactory.getConn();
        try {
            ps = conn.prepareStatement("insert into book(booknumber,bookname,author,price,pressmark,sort,count) values (?,?,?,?,?,?,?);");
            ps.setString(1,booknumber);
            ps.setString(2,bookname);
            ps.setString(3,author);
            ps.setString(4,price);
            ps.setString(5,pressmark);
            ps.setString(6,sort);
            ps.setString(7,count);
            flag = ps.executeUpdate()==1;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }



//根据书名查询书籍
    public List<Book> findBooksByName(String bookname){
        List<Book> list = new ArrayList<>();
        conn = DaoFactory.getConn();
        try{
            ps = conn.prepareStatement("Select * from book where bookname =?;");
            ps.setString(1,bookname);
            rs = ps.executeQuery();
            while (rs.next()){
                Book book = new Book(
                        rs.getInt("booknumber"),
                        rs.getString("bookname"),
                        rs.getString("author"),
                        rs.getFloat("price"),
                        rs.getInt("pressmark"),
                        rs.getString("sort"),
                        rs.getInt("count")
                );
                list.add(book);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }



//根据删除书籍
    public boolean delBook(String bookname){
        boolean flag = false;
        conn = DaoFactory.getConn();
        try {
            ps = conn.prepareStatement("delete from book where bookname = ?");
            ps.setString(1,bookname);
            flag = ps.executeUpdate()==1;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }



//更改书籍编号
    public boolean changeBooknumber(String booknumber,String bookname){
        boolean flag = false;
        conn = DaoFactory.getConn();
        try {
            ps = conn.prepareStatement("update book set booknumber =? where bookname =?;");
            ps.setString(1,booknumber);
            ps.setString(2,bookname);
            flag = ps.executeUpdate()==1;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }



//更改书籍名称
    public boolean changeBookname(String bookname,String booknumber){
        boolean flag = false;
        conn = DaoFactory.getConn();
        try {
            ps = conn.prepareStatement("update book set bookname =? where booknumber =?;");
            ps.setString(1,bookname);
            ps.setString(2,booknumber);
            flag = ps.executeUpdate()==1;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }



//更改书籍作者
    public boolean changeBookauthor(String author,String bookname){
        boolean flag = false;
        conn = DaoFactory.getConn();
        try {
            ps = conn.prepareStatement("update book set author =? where bookname =?;");
            ps.setString(1,author);
            ps.setString(2,bookname);
            flag = ps.executeUpdate()==1;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }


//更改书籍价格
    public boolean changeBookprice(String price,String bookname){
        boolean flag = false;
        conn = DaoFactory.getConn();
        try {
            ps = conn.prepareStatement("update book set price =? where bookname =?;");
            ps.setString(1,price);
            ps.setString(2,bookname);
            flag = ps.executeUpdate()==1;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }


//更改书架号
    public boolean changeBookpressmark(String pressmark,String bookname){
        boolean flag = false;
        conn = DaoFactory.getConn();
        try {
            ps = conn.prepareStatement("update book set pressmark =? where bookname =?;");
            ps.setString(1,pressmark);
            ps.setString(2,bookname);
            flag = ps.executeUpdate()==1;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }


//更改书籍类别
    public boolean changeBooksort(String sort,String bookname){
        boolean flag = false;
        conn = DaoFactory.getConn();
        try {
            ps = conn.prepareStatement("update book set sort =? where bookname =?;");
            ps.setString(1,sort);
            ps.setString(2,bookname);
            flag = ps.executeUpdate()==1;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }


//更改书籍数量
    public boolean changeBookcount(String count,String bookname){
        boolean flag = false;
        conn = DaoFactory.getConn();
        try {
            ps = conn.prepareStatement("update book set count =? where bookname =?;");
            ps.setString(1,count);
            ps.setString(2,bookname);
            flag = ps.executeUpdate()==1;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }
}

















