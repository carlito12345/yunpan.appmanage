package com.hierynomus.smbj.connection;

import com.hierynomus.mssmb2.SMB2MessageFlag;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.SMB2PacketData;
import com.hierynomus.mssmb2.SMB2PacketHeader;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.security.Mac;
import com.hierynomus.security.SecurityException;
import com.hierynomus.security.SecurityProvider;
import com.hierynomus.smb.SMBBuffer;
import java.util.Arrays;
import javax.crypto.SecretKey;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class PacketSignatory implements Signatory {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) PacketSignatory.class);
    private SecurityProvider securityProvider;

    public class SignedPacketWrapper extends SMB2Packet {
        private SecretKey secretKey;
        private final SMB2Packet wrappedPacket;

        public class SigningBuffer extends SMBBuffer {
            private final Mac mac;
            private SMBBuffer wrappedBuffer;

            public SigningBuffer(SMBBuffer sMBBuffer) {
                this.wrappedBuffer = sMBBuffer;
                this.mac = PacketSignatory.getMac(SignedPacketWrapper.this.secretKey, PacketSignatory.this.securityProvider);
            }

            @Override // com.hierynomus.protocol.commons.buffer.Buffer
            public Buffer<SMBBuffer> putBuffer(Buffer<? extends Buffer<?>> buffer) {
                this.mac.update(buffer.array(), buffer.rpos(), buffer.available());
                this.wrappedBuffer.putBuffer(buffer);
                return this;
            }

            @Override // com.hierynomus.protocol.commons.buffer.Buffer
            public Buffer<SMBBuffer> putByte(byte b10) {
                this.mac.update(b10);
                this.wrappedBuffer.putByte(b10);
                return this;
            }

            @Override // com.hierynomus.protocol.commons.buffer.Buffer
            public Buffer<SMBBuffer> putRawBytes(byte[] bArr, int i10, int i11) {
                this.mac.update(bArr, i10, i11);
                this.wrappedBuffer.putRawBytes(bArr, i10, i11);
                return this;
            }
        }

        public SignedPacketWrapper(SMB2Packet sMB2Packet, SecretKey secretKey) {
            this.wrappedPacket = sMB2Packet;
            this.secretKey = secretKey;
        }

        @Override // com.hierynomus.mssmb2.SMB2Packet
        public int getMaxPayloadSize() {
            return this.wrappedPacket.getMaxPayloadSize();
        }

        @Override // com.hierynomus.mssmb2.SMB2Packet
        public SMB2Packet getPacket() {
            return this.wrappedPacket.getPacket();
        }

        @Override // com.hierynomus.mssmb2.SMB2Packet
        public long getSequenceNumber() {
            return this.wrappedPacket.getSequenceNumber();
        }

        @Override // com.hierynomus.mssmb2.SMB2Packet
        public int getStructureSize() {
            return this.wrappedPacket.getStructureSize();
        }

        @Override // com.hierynomus.mssmb2.SMB2Packet
        public String toString() {
            return "Signed(" + this.wrappedPacket.toString() + ")";
        }

        @Override // com.hierynomus.smb.SMBPacket
        public SMB2PacketHeader getHeader() {
            return this.wrappedPacket.getHeader();
        }

        @Override // com.hierynomus.mssmb2.SMB2Packet, com.hierynomus.protocol.Packet
        public void write(SMBBuffer sMBBuffer) {
            try {
                this.wrappedPacket.getHeader().setFlag(SMB2MessageFlag.SMB2_FLAGS_SIGNED);
                int iWpos = sMBBuffer.wpos();
                SigningBuffer signingBuffer = new SigningBuffer(sMBBuffer);
                this.wrappedPacket.write((SMBBuffer) signingBuffer);
                System.arraycopy(signingBuffer.mac.doFinal(), 0, sMBBuffer.array(), iWpos + 48, 16);
            } catch (SecurityException e7) {
                throw new IllegalStateException(e7);
            }
        }
    }

    public PacketSignatory(SecurityProvider securityProvider) {
        this.securityProvider = securityProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Mac getMac(SecretKey secretKey, SecurityProvider securityProvider) {
        Mac mac = securityProvider.getMac(secretKey.getAlgorithm());
        mac.init(secretKey.getEncoded());
        return mac;
    }

    @Override // com.hierynomus.smbj.connection.Signatory
    public SMB2Packet sign(SMB2Packet sMB2Packet, SecretKey secretKey) {
        if (secretKey != null) {
            return new SignedPacketWrapper(sMB2Packet, secretKey);
        }
        logger.debug("Not wrapping {} as signed, as no key is set.", sMB2Packet.getHeader().getMessage());
        return sMB2Packet;
    }

    @Override // com.hierynomus.smbj.connection.Signatory
    public boolean verify(SMB2PacketData sMB2PacketData, SecretKey secretKey) {
        try {
            SMBBuffer dataBuffer = sMB2PacketData.getDataBuffer();
            Mac mac = getMac(secretKey, this.securityProvider);
            mac.update(dataBuffer.array(), sMB2PacketData.getHeader().getHeaderStartPosition(), 48);
            mac.update(SMB2PacketHeader.EMPTY_SIGNATURE);
            mac.update(dataBuffer.array(), 64, sMB2PacketData.getHeader().getMessageEndPosition() - 64);
            byte[] bArrDoFinal = mac.doFinal();
            byte[] signature = sMB2PacketData.getHeader().getSignature();
            for (int i10 = 0; i10 < 16; i10++) {
                if (bArrDoFinal[i10] != signature[i10]) {
                    Logger logger2 = logger;
                    logger2.error("Signatures for packet {} do not match (received: {}, calculated: {})", sMB2PacketData, Arrays.toString(signature), Arrays.toString(bArrDoFinal));
                    logger2.error("Packet {} has header: {}", sMB2PacketData, sMB2PacketData.getHeader());
                    return false;
                }
            }
            return true;
        } catch (SecurityException e7) {
            throw new IllegalStateException(e7);
        }
    }
}
