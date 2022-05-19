package dao;

import java.util.List;

import entity.recording;

public interface recordingdao {
    //添加记录
    public boolean addRecording(recording r);

    //判断记录是否存在
    public  boolean isExiet(int Rno);

    //删除记录
    public boolean deleteRecording(int Rno);

    //删除某书的全部借书记录
    public boolean deleteRecordingbySno(int Bno);

    //查询某借书记录
    public recording qeuryRecording(int Rno);

    //查询某学生的借书记录
    public List<recording> queryRecordingbySno(int Sno);

    //查询某本书的借书记录
    public List<recording> queryRecordingbyBno(int Bno);

    //查询某条借书记录
    public recording queryRecordingbySnoandBno(int Sno,int Bno);

    //查询所有借书记录
    public List<recording> queryAllrecording();

    //更新记录
    public boolean updataRecording(int Rno,String BOBday);
}
