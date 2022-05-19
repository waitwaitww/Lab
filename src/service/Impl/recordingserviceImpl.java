package service.Impl;

import dao.Impl.recordingdaoImpl;
import dao.recordingdao;
import entity.recording;
import service.recordingservice;

import java.util.List;

public class recordingserviceImpl implements recordingservice{

    recordingdao recordingdao = new recordingdaoImpl();
    @Override
    public boolean addRecording(recording recording) {
        if (!recordingdao.isExiet(recording.getRno()))
            return recordingdao.addRecording(recording);
        return false;
    }

    @Override
    public boolean deleteRecording(int Rno) {
        if (!recordingdao.isExiet(Rno))
            return recordingdao.deleteRecording(Rno);
        return false;
    }

    @Override
    public boolean deleteRecodingbyBno(int Bno) {
        return false;
    }

    @Override
    public List<recording> queryAllrecording() {
        return recordingdao.queryAllrecording();
    }

    @Override
    public List<recording> qeuryRecordingbybno(int Bno) {
        return recordingdao.queryRecordingbyBno(Bno);
    }

    @Override
    public List<recording> qeuryRecordingBysno(int Sno) {
        return recordingdao.queryRecordingbySno(Sno);
    }

    @Override
    public recording queryRecordingBySnoandBno(int Sno, int Bno) {
        return recordingdao.queryRecordingbySnoandBno(Sno,Bno);
    }

    @Override
    public recording queryRecording(int Rno) {
        return recordingdao.qeuryRecording(Rno);
    }

    @Override
    public boolean updataRecording(int Rno, String BOBday) {
        if(recordingdao.isExiet(Rno))
            recordingdao.updataRecording(Rno,BOBday);
        return false;
    }
}
