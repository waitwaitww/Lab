package service;

import entity.book;

import java.util.List;

public interface bookservice {
    //添加新书
    public boolean addBook(book book);

    //删除书目
    public boolean deleteBook(int Bno);

    //查询书目
    public book queryBook(int Bno);

    //查询所有书本(按被借出次数排序）
    public List<book> qeuryAllbook();

    //查询推荐值最高的书
    public book queryBookrecommend();

    //查询搜索栏中对应的书目
    public List<book> queryBook(String some);

    //借书
    public boolean reduceBook(int Bno);

    //还书
    public boolean returnBook(int Bno);

    //推荐值加一
    public boolean plusBookrecommend(int Bno);
}
