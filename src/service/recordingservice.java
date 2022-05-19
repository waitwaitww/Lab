package service;

import entity.recording;

import java.util.List;

public interface recordingservice {
    //添加新的借书记录
    public boolean addRecording(recording recording);

    //删除某条借书记录
    public boolean deleteRecording(int Rno);

    //删除某书的全部借书记录
    public boolean deleteRecodingbyBno(int Bno);

    //查询所有借书记录
    public List<recording> queryAllrecording();

    //查询某书的借书记录
    public List<recording> qeuryRecordingbybno(int Bno);

    //查询某学生的借书记录
    public List<recording> qeuryRecordingBysno(int Sno);

    //查询某条借书记录
    public recording queryRecordingBySnoandBno(int Sno,int Bno);

    //查询记录
    public recording queryRecording(int Rno);

    //修改还书后的借书记录
    public boolean updataRecording(int Rno,String BOBday );

}
