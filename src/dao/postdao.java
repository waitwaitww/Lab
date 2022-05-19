package dao;

import entity.post;

import java.util.List;

public interface postdao {
    //新增公告
    public boolean addPost(post post);

    //删除公告
    public boolean deletePost(int Pno);

    //判断公告是否存在
    public boolean isExist(int Pno);

    //查询公告
    public post queryPost(int Pno);

    //查询所有公告
    public List<post> queryAllpost();

    //修改公告内容
    public boolean updataPostcontent(int Pno,String Pcontent);

    //查询最近期发布的三条公告
    public List<post> queryPostnew();
}
