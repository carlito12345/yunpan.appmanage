package com.hierynomus.mssmb2.messages.negotiate;

import com.hierynomus.mssmb2.SMB3CompressionAlgorithm;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class SMB2CompressionCapabilities extends SMB2NegotiateContext {
    private List<SMB3CompressionAlgorithm> compressionAlgorithms;

    public SMB2CompressionCapabilities() {
        super(SMB2NegotiateContextType.SMB2_COMPRESSION_CAPABILITIES);
        this.compressionAlgorithms = new ArrayList();
    }

    public List<SMB3CompressionAlgorithm> getCompressionAlgorithms() {
        return this.compressionAlgorithms;
    }

    @Override // com.hierynomus.mssmb2.messages.negotiate.SMB2NegotiateContext
    public void readContext(SMBBuffer sMBBuffer, int i10) throws Buffer.BufferException {
        int uInt16 = sMBBuffer.readUInt16();
        sMBBuffer.skip(2);
        sMBBuffer.skip(4);
        for (int i11 = 0; i11 < uInt16; i11++) {
            int uInt162 = sMBBuffer.readUInt16();
            SMB3CompressionAlgorithm sMB3CompressionAlgorithm = (SMB3CompressionAlgorithm) EnumWithValue.EnumUtils.valueOf(uInt162, SMB3CompressionAlgorithm.class, null);
            if (sMB3CompressionAlgorithm == null) {
                throw new IllegalStateException(String.format("Unknown SMB3CompressionAlgorithm with value '%d'", Integer.valueOf(uInt162)));
            }
            this.compressionAlgorithms.add(sMB3CompressionAlgorithm);
        }
    }

    @Override // com.hierynomus.mssmb2.messages.negotiate.SMB2NegotiateContext
    public int writeContext(SMBBuffer sMBBuffer) {
        List<SMB3CompressionAlgorithm> list = this.compressionAlgorithms;
        if (list == null) {
            throw new IllegalStateException("Cannot write a null compressionAlgorithms array");
        }
        sMBBuffer.putUInt16(list.size());
        sMBBuffer.putReserved2();
        sMBBuffer.putReserved4();
        Iterator<SMB3CompressionAlgorithm> it = this.compressionAlgorithms.iterator();
        while (it.hasNext()) {
            sMBBuffer.putUInt16((int) it.next().getValue());
        }
        return (this.compressionAlgorithms.size() * 2) + 8;
    }

    public SMB2CompressionCapabilities(List<SMB3CompressionAlgorithm> list) {
        super(SMB2NegotiateContextType.SMB2_COMPRESSION_CAPABILITIES);
        this.compressionAlgorithms = list;
    }
}
