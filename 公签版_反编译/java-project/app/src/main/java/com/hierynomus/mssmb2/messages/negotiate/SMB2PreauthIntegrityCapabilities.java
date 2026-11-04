package com.hierynomus.mssmb2.messages.negotiate;

import com.hierynomus.mssmb2.SMB3HashAlgorithm;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.smb.SMBBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class SMB2PreauthIntegrityCapabilities extends SMB2NegotiateContext {
    public static final int DEFAULT_SALT_LENGTH = 32;
    private List<SMB3HashAlgorithm> hashAlgorithms;
    private byte[] salt;

    public SMB2PreauthIntegrityCapabilities() {
        super(SMB2NegotiateContextType.SMB2_PREAUTH_INTEGRITY_CAPABILITIES);
        this.hashAlgorithms = new ArrayList();
    }

    public List<SMB3HashAlgorithm> getHashAlgorithms() {
        return this.hashAlgorithms;
    }

    public byte[] getSalt() {
        return this.salt;
    }

    @Override // com.hierynomus.mssmb2.messages.negotiate.SMB2NegotiateContext
    public void readContext(SMBBuffer sMBBuffer, int i10) {
        int uInt16 = sMBBuffer.readUInt16();
        int uInt162 = sMBBuffer.readUInt16();
        for (int i11 = 0; i11 < uInt16; i11++) {
            int uInt163 = sMBBuffer.readUInt16();
            SMB3HashAlgorithm sMB3HashAlgorithm = (SMB3HashAlgorithm) EnumWithValue.EnumUtils.valueOf(uInt163, SMB3HashAlgorithm.class, null);
            if (sMB3HashAlgorithm == null) {
                throw new IllegalStateException(String.format("Unknown SMB3HashAlgorithm with value '%d'", Integer.valueOf(uInt163)));
            }
            this.hashAlgorithms.add(sMB3HashAlgorithm);
        }
        this.salt = sMBBuffer.readRawBytes(uInt162);
    }

    @Override // com.hierynomus.mssmb2.messages.negotiate.SMB2NegotiateContext
    public int writeContext(SMBBuffer sMBBuffer) {
        List<SMB3HashAlgorithm> list = this.hashAlgorithms;
        if (list == null) {
            throw new IllegalStateException("There should be at least 1 hash algorithm provided");
        }
        if (this.salt == null) {
            throw new IllegalStateException("A salt should be provided");
        }
        sMBBuffer.putUInt16(list.size());
        sMBBuffer.putUInt16(this.salt.length);
        Iterator<SMB3HashAlgorithm> it = this.hashAlgorithms.iterator();
        while (it.hasNext()) {
            sMBBuffer.putUInt16((int) it.next().getValue());
        }
        sMBBuffer.putRawBytes(this.salt);
        return (this.hashAlgorithms.size() * 2) + 4 + this.salt.length;
    }

    public SMB2PreauthIntegrityCapabilities(List<SMB3HashAlgorithm> list, byte[] bArr) {
        super(SMB2NegotiateContextType.SMB2_PREAUTH_INTEGRITY_CAPABILITIES);
        this.hashAlgorithms = list;
        this.salt = (byte[]) bArr.clone();
    }
}
