package service;

import entity.post;

import java.util.List;

public interface postservice {
    //添加新的公告
    public boolean addPost(post post);

    //删除公告
    public  boolean deletePost(int Pno);

    //查询所有公告
    public List<post> queryPost();

    //修改公告内容
    public boolean updataPost(int Pno,String Pcontent);

    //查询最新发布的三条公告
    public List<post> queryPostnew();
}
