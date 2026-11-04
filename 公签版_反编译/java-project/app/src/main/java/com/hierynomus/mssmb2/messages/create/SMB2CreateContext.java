package com.hierynomus.mssmb2.messages.create;

import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SMB2CreateContext {
    private static final int HEADER_SIZE = 16;
    private final byte[] data;
    private final byte[] name;

    public SMB2CreateContext(byte[] bArr, byte[] bArr2) {
        this.name = bArr;
        this.data = bArr2 == null ? new byte[0] : bArr2;
    }

    private static int align8(int i10) {
        return (i10 + 7) & (-8);
    }

    public static List<SMB2CreateContext> readAll(SMBBuffer sMBBuffer, int i10, int i11) throws Buffer.BufferException {
        byte[] rawBytes;
        ArrayList arrayList = new ArrayList();
        if (i11 == 0) {
            return arrayList;
        }
        sMBBuffer.rpos(i10);
        while (true) {
            int iRpos = sMBBuffer.rpos();
            int uInt32 = (int) sMBBuffer.readUInt32();
            int uInt16 = sMBBuffer.readUInt16();
            int uInt162 = sMBBuffer.readUInt16();
            sMBBuffer.skip(2);
            int uInt163 = sMBBuffer.readUInt16();
            int uInt322 = (int) sMBBuffer.readUInt32();
            sMBBuffer.rpos(uInt16 + iRpos);
            byte[] rawBytes2 = sMBBuffer.readRawBytes(uInt162);
            if (uInt322 <= 0 || uInt163 == 0) {
                rawBytes = new byte[0];
            } else {
                sMBBuffer.rpos(uInt163 + iRpos);
                rawBytes = sMBBuffer.readRawBytes(uInt322);
            }
            arrayList.add(new SMB2CreateContext(rawBytes2, rawBytes));
            if (uInt32 == 0) {
                return arrayList;
            }
            sMBBuffer.rpos(iRpos + uInt32);
        }
    }

    public static int writeAll(SMBBuffer sMBBuffer, List<SMB2CreateContext> list) {
        if (list == null || list.isEmpty()) {
            return 0;
        }
        int iWpos = sMBBuffer.wpos();
        int i10 = 0;
        while (i10 < list.size()) {
            SMB2CreateContext sMB2CreateContext = list.get(i10);
            boolean z = i10 == list.size() - 1;
            int iWpos2 = sMBBuffer.wpos();
            int length = sMB2CreateContext.name.length;
            int length2 = sMB2CreateContext.data.length;
            int iAlign8 = length2 == 0 ? 0 : align8(length + 16);
            int iWpos3 = sMBBuffer.wpos();
            sMBBuffer.putUInt32(0L);
            sMBBuffer.putUInt16(16);
            sMBBuffer.putUInt16(length);
            sMBBuffer.putReserved(2);
            sMBBuffer.putUInt16(iAlign8);
            sMBBuffer.putUInt32(length2);
            sMBBuffer.putRawBytes(sMB2CreateContext.name);
            if (length2 > 0) {
                sMBBuffer.putReserved(iAlign8 - (length + 16));
                sMBBuffer.putRawBytes(sMB2CreateContext.data);
            }
            if (!z) {
                int iWpos4 = sMBBuffer.wpos() - iWpos2;
                int iAlign82 = align8(iWpos4) - iWpos4;
                sMBBuffer.putReserved(iAlign82);
                int i11 = iAlign82 + iWpos4;
                int iWpos5 = sMBBuffer.wpos();
                sMBBuffer.wpos(iWpos3);
                sMBBuffer.putUInt32(i11);
                sMBBuffer.wpos(iWpos5);
            }
            i10++;
        }
        return sMBBuffer.wpos() - iWpos;
    }

    public byte[] getData() {
        return this.data;
    }

    public byte[] getName() {
        return this.name;
    }
}
