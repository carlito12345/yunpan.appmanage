package com.hierynomus.ntlm.messages;

import com.hierynomus.ntlm.functions.NtlmFunctions;
import com.hierynomus.protocol.commons.ByteArrayUtils;
import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.commons.buffer.Endian;
import java.util.Set;

/* loaded from: classes.dex */
public class NtlmAuthenticate extends NtlmMessage {
    private byte[] domainName;
    private byte[] encryptedRandomSessionKey;
    private byte[] lmResponse;
    private byte[] mic;
    private byte[] ntResponse;
    private byte[] userName;
    private byte[] workstation;

    public NtlmAuthenticate(byte[] bArr, byte[] bArr2, String str, String str2, String str3, byte[] bArr3, Set<NtlmNegotiateFlag> set, WindowsVersion windowsVersion) {
        super(set, windowsVersion);
        this.lmResponse = Utils.ensureNotNull(bArr);
        this.ntResponse = Utils.ensureNotNull(bArr2);
        this.userName = Utils.ensureNotNull(str);
        this.domainName = Utils.ensureNotNull(str2);
        this.workstation = Utils.ensureNotNull(str3);
        this.encryptedRandomSessionKey = Utils.ensureNotNull(bArr3);
        this.negotiateFlags = set;
    }

    private int getBaseMessageSize() {
        int i10 = (this.negotiateFlags.contains(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_VERSION) || this.mic != null) ? 72 : 64;
        return this.mic != null ? i10 + 16 : i10;
    }

    public byte[] getVersion() {
        Buffer.PlainBuffer plainBuffer = new Buffer.PlainBuffer(Endian.LE);
        plainBuffer.putByte((byte) 6);
        plainBuffer.putByte((byte) 1);
        plainBuffer.putUInt16(7600);
        plainBuffer.putRawBytes(new byte[]{0, 0, 0});
        plainBuffer.putByte((byte) 15);
        return plainBuffer.getCompactData();
    }

    public void setMic(byte[] bArr) {
        this.mic = bArr;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("NtlmAuthenticate{\n  mic=");
        byte[] bArr = this.mic;
        sb2.append(bArr != null ? ByteArrayUtils.printHex(bArr) : "[]");
        sb2.append(",\n  lmResponse=");
        sb2.append(ByteArrayUtils.printHex(this.lmResponse));
        sb2.append(",\n  ntResponse=");
        sb2.append(ByteArrayUtils.printHex(this.ntResponse));
        sb2.append(",\n  domainName='");
        sb2.append(NtlmFunctions.unicode(this.domainName));
        sb2.append("',\n  userName='");
        sb2.append(NtlmFunctions.unicode(this.userName));
        sb2.append("',\n  workstation='");
        sb2.append(NtlmFunctions.unicode(this.workstation));
        sb2.append("',\n  encryptedRandomSessionKey=[<secret>],\n}");
        return sb2.toString();
    }

    @Override // com.hierynomus.ntlm.messages.NtlmPacket, com.hierynomus.protocol.Packet
    public void write(Buffer.PlainBuffer plainBuffer) {
        plainBuffer.putString("NTLMSSP\u0000", Charsets.UTF_8);
        plainBuffer.putUInt32(3L);
        Utils.writeOffsettedByteArrayFields(plainBuffer, this.encryptedRandomSessionKey, Utils.writeOffsettedByteArrayFields(plainBuffer, this.workstation, Utils.writeOffsettedByteArrayFields(plainBuffer, this.userName, Utils.writeOffsettedByteArrayFields(plainBuffer, this.domainName, Utils.writeOffsettedByteArrayFields(plainBuffer, this.ntResponse, Utils.writeOffsettedByteArrayFields(plainBuffer, this.lmResponse, getBaseMessageSize()))))));
        plainBuffer.putUInt32(EnumWithValue.EnumUtils.toLong(this.negotiateFlags));
        if (this.negotiateFlags.contains(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_VERSION)) {
            plainBuffer.putRawBytes(getVersion());
        } else if (this.mic != null) {
            plainBuffer.putUInt64(0L);
        }
        byte[] bArr = this.mic;
        if (bArr != null) {
            plainBuffer.putRawBytes(bArr, 0, 16);
        }
        plainBuffer.putRawBytes(this.lmResponse);
        plainBuffer.putRawBytes(this.ntResponse);
        plainBuffer.putRawBytes(this.domainName);
        plainBuffer.putRawBytes(this.userName);
        plainBuffer.putRawBytes(this.workstation);
        plainBuffer.putRawBytes(this.encryptedRandomSessionKey);
    }
}
