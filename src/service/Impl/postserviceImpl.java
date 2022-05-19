package service.Impl;

import dao.Impl.postdaoImpl;
import dao.postdao;
import entity.post;
import service.postservice;

import java.util.List;

public class postserviceImpl implements postservice{

    postdao postdao = new postdaoImpl();
    @Override
    public boolean addPost(post post) {
        if (!postdao.isExist(post.getPno()))
            return postdao.addPost(post);
        return false;
    }

    @Override
    public boolean deletePost(int Pno) {
        if (postdao.isExist(Pno))
            return postdao.deletePost(Pno);
        return false;
    }

    @Override
    public List<post> queryPost() {
        return postdao.queryAllpost();
    }

    @Override
    public boolean updataPost(int Pno, String Pcontent) {
        if (postdao.isExist(Pno))
            return postdao.updataPostcontent(Pno,Pcontent);
        return false;
    }

    @Override
    public List<post> queryPostnew() {
        return postdao.queryPostnew();
    }
}
