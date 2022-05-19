package dao;

import java.util.List;

import entity.book;

public interface bookdao {
    //添加书
    public boolean addBook(book b);

    //删除书
    public boolean deleteBook(int Bno);

    //查询书本是否存在
    public boolean isExist(int Bno);

    //更改书本信息
    public boolean updataBook(int Bno,book b);

    //书本数目减一
    public boolean reduceBook(int Bno);

    //书本数目加一
    public boolean plusBook(int Bno);

    //查询书本信息
    public book queryBook(int Bno);

    //查询所有书目
    public List<book> queryAllbook();

    //根据书名查询书本信息
    public List<book> queryBookbyname(String name);

    //根据书本类别查询书本信息
    public List<book> queryBookbycategory(String category);

    //根据作者查询书本信息
    public List<book> queryBookbyauthor(String author);

    //书本推荐值加一
    public boolean plusBookrecommend(int Bno);

    //查找推荐值最高的书本
    public book queryMaxrecommend();
}
