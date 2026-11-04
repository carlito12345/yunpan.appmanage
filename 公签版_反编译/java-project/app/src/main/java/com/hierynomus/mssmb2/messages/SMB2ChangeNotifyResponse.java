package com.hierynomus.mssmb2.messages;

import com.hierynomus.msfscc.directory.FileNotifyInformation;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.SMB2PacketHeader;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SMB2ChangeNotifyResponse extends SMB2Packet {
    List<FileNotifyInformation> fileNotifyInfoList = new ArrayList();

    private List<FileNotifyInformation> readFileNotifyInfo(SMBBuffer sMBBuffer, int i10) {
        ArrayList arrayList = new ArrayList();
        sMBBuffer.rpos(((SMB2PacketHeader) this.header).getHeaderStartPosition() + i10);
        while (true) {
            int iRpos = sMBBuffer.rpos();
            FileNotifyInformation fileNotifyInformation = new FileNotifyInformation();
            fileNotifyInformation.read(sMBBuffer);
            arrayList.add(fileNotifyInformation);
            if (fileNotifyInformation.getNextEntryOffset() == 0) {
                return arrayList;
            }
            sMBBuffer.rpos(fileNotifyInformation.getNextEntryOffset() + iRpos);
        }
    }

    public List<FileNotifyInformation> getFileNotifyInfoList() {
        return this.fileNotifyInfoList;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void readMessage(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        sMBBuffer.skip(2);
        int uInt16 = sMBBuffer.readUInt16();
        int uInt32AsInt = sMBBuffer.readUInt32AsInt();
        if (uInt16 > 0 && uInt32AsInt > 0) {
            this.fileNotifyInfoList = readFileNotifyInfo(sMBBuffer, uInt16);
        }
        sMBBuffer.rpos(((SMB2PacketHeader) this.header).getHeaderStartPosition() + uInt16 + uInt32AsInt);
    }
}
