package service.Impl;

import dao.Impl.bookdaoImpl;
import dao.bookdao;
import entity.book;
import service.bookservice;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeSet;

public class bookserviceImpl implements bookservice{

    bookdao bookdao = new bookdaoImpl();

    @Override
    public boolean addBook(book book) {
        if (!bookdao.isExist(book.getBno()))
            return bookdao.addBook(book);
        return false;
    }

    @Override
    public boolean deleteBook(int Bno) {
        if (bookdao.isExist(Bno))
            return bookdao.deleteBook(Bno);
        return false;
    }

    @Override
    public book queryBook(int Bno) {
        return bookdao.queryBook(Bno);
    }

    @Override
    public List<book> qeuryAllbook() {
        return bookdao.queryAllbook();
    }

    @Override
    public book queryBookrecommend() {
        return bookdao.queryMaxrecommend();
    }

    @Override
    public List<book> queryBook(String some) {
        List<book> books = new ArrayList<>();
        List<book> book1 = bookdao.queryBookbyname(some);
        List<book> book2 = bookdao.queryBookbycategory(some);
        List<book> book3 = bookdao.queryBookbyauthor(some);
        books.addAll(book1);
        books.addAll(book2);
        books.addAll(book3);
        TreeSet set = new TreeSet(books);
        books.clear();
        books.addAll(set);
        return books;
    }

    @Override
    public boolean reduceBook(int Bno) {
        if (bookdao.isExist(Bno))
            return bookdao.reduceBook(Bno);
        return false;
    }

    @Override
    public boolean returnBook(int Bno) {
        if (bookdao.isExist(Bno))
            return bookdao.plusBook(Bno);
        return false;
    }

    @Override
    public boolean plusBookrecommend(int Bno) {
        if(bookdao.isExist(Bno))
            return bookdao.plusBookrecommend(Bno);
        return false;
    }
}
