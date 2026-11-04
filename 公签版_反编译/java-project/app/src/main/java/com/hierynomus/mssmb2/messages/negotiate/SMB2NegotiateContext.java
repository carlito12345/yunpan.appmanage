package com.hierynomus.mssmb2.messages.negotiate;

import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.common.SMBRuntimeException;

/* loaded from: classes.dex */
public abstract class SMB2NegotiateContext {
    private SMB2NegotiateContextType negotiateContextType;

    /* renamed from: com.hierynomus.mssmb2.messages.negotiate.SMB2NegotiateContext$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$hierynomus$mssmb2$messages$negotiate$SMB2NegotiateContextType;

        static {
            int[] iArr = new int[SMB2NegotiateContextType.values().length];
            $SwitchMap$com$hierynomus$mssmb2$messages$negotiate$SMB2NegotiateContextType = iArr;
            try {
                iArr[SMB2NegotiateContextType.SMB2_PREAUTH_INTEGRITY_CAPABILITIES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$hierynomus$mssmb2$messages$negotiate$SMB2NegotiateContextType[SMB2NegotiateContextType.SMB2_ENCRYPTION_CAPABILITIES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$hierynomus$mssmb2$messages$negotiate$SMB2NegotiateContextType[SMB2NegotiateContextType.SMB2_COMPRESSION_CAPABILITIES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$hierynomus$mssmb2$messages$negotiate$SMB2NegotiateContextType[SMB2NegotiateContextType.SMB2_NETNAME_NEGOTIATE_CONTEXT_ID.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public SMB2NegotiateContext(SMB2NegotiateContextType sMB2NegotiateContextType) {
        this.negotiateContextType = sMB2NegotiateContextType;
    }

    public static SMB2NegotiateContext factory(SMBBuffer sMBBuffer) {
        int uInt16 = sMBBuffer.readUInt16();
        SMB2NegotiateContextType sMB2NegotiateContextType = (SMB2NegotiateContextType) EnumWithValue.EnumUtils.valueOf(uInt16, SMB2NegotiateContextType.class, null);
        int i10 = AnonymousClass1.$SwitchMap$com$hierynomus$mssmb2$messages$negotiate$SMB2NegotiateContextType[sMB2NegotiateContextType.ordinal()];
        if (i10 == 1) {
            return new SMB2PreauthIntegrityCapabilities().read(sMBBuffer);
        }
        if (i10 == 2) {
            return new SMB2EncryptionCapabilities().read(sMBBuffer);
        }
        if (i10 == 3) {
            return new SMB2CompressionCapabilities().read(sMBBuffer);
        }
        if (i10 == 4) {
            return new SMB2NetNameNegotiateContextId().read(sMBBuffer);
        }
        throw new SMBRuntimeException("Unknown SMB2NegotiateContextType encountered: " + uInt16 + " / " + sMB2NegotiateContextType);
    }

    private int readContextHeader(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        int uInt16 = sMBBuffer.readUInt16();
        sMBBuffer.skip(4);
        return uInt16;
    }

    private void writeContextHeader(SMBBuffer sMBBuffer, int i10) {
        sMBBuffer.putUInt16((int) this.negotiateContextType.getValue());
        sMBBuffer.putUInt16(i10);
        sMBBuffer.putReserved4();
    }

    public SMB2NegotiateContextType getNegotiateContextType() {
        return this.negotiateContextType;
    }

    public final SMB2NegotiateContext read(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        int contextHeader = readContextHeader(sMBBuffer);
        readContext(sMBBuffer, contextHeader);
        int i10 = contextHeader % 8;
        int i11 = i10 == 0 ? 0 : 8 - i10;
        if (i11 > 0 && sMBBuffer.available() >= i11) {
            sMBBuffer.skip(i11);
        }
        return this;
    }

    public void readContext(SMBBuffer sMBBuffer, int i10) {
        throw new UnsupportedOperationException("Should be implemented by specific message type");
    }

    public final int write(SMBBuffer sMBBuffer) {
        SMBBuffer sMBBuffer2 = new SMBBuffer();
        int iWriteContext = writeContext(sMBBuffer2);
        writeContextHeader(sMBBuffer, iWriteContext);
        sMBBuffer.putBuffer(sMBBuffer2);
        return iWriteContext + 8;
    }

    public int writeContext(SMBBuffer sMBBuffer) {
        throw new UnsupportedOperationException("Should be implemented by specific SMB2NegotiateContext");
    }
}
