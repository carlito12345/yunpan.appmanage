package com.hierynomus.mssmb2.messages.negotiate;

import com.hierynomus.mssmb2.SMB3EncryptionCipher;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.smb.SMBBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class SMB2EncryptionCapabilities extends SMB2NegotiateContext {
    private List<SMB3EncryptionCipher> cipherList;

    public SMB2EncryptionCapabilities() {
        super(SMB2NegotiateContextType.SMB2_ENCRYPTION_CAPABILITIES);
        this.cipherList = new ArrayList();
    }

    public List<SMB3EncryptionCipher> getCipherList() {
        return this.cipherList;
    }

    @Override // com.hierynomus.mssmb2.messages.negotiate.SMB2NegotiateContext
    public void readContext(SMBBuffer sMBBuffer, int i10) {
        int uInt16 = sMBBuffer.readUInt16();
        for (int i11 = 0; i11 < uInt16; i11++) {
            this.cipherList.add((SMB3EncryptionCipher) EnumWithValue.EnumUtils.valueOf(sMBBuffer.readUInt16(), SMB3EncryptionCipher.class, null));
        }
    }

    @Override // com.hierynomus.mssmb2.messages.negotiate.SMB2NegotiateContext
    public int writeContext(SMBBuffer sMBBuffer) {
        List<SMB3EncryptionCipher> list = this.cipherList;
        if (list == null || list.isEmpty()) {
            throw new IllegalStateException("Cannot serialize an empty or null cipherList");
        }
        sMBBuffer.putUInt16(this.cipherList.size());
        Iterator<SMB3EncryptionCipher> it = this.cipherList.iterator();
        while (it.hasNext()) {
            sMBBuffer.putUInt16((int) it.next().getValue());
        }
        return (this.cipherList.size() * 2) + 2;
    }

    public SMB2EncryptionCapabilities(List<SMB3EncryptionCipher> list) {
        super(SMB2NegotiateContextType.SMB2_ENCRYPTION_CAPABILITIES);
        this.cipherList = list;
    }
}
