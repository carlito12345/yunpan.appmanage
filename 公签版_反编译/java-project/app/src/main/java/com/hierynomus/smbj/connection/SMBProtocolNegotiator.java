package com.hierynomus.smbj.connection;

import com.hierynomus.mserref.NtStatus;
import com.hierynomus.mssmb.messages.SMB1ComNegotiateRequest;
import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2GlobalCapability;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.SMB3CompressionAlgorithm;
import com.hierynomus.mssmb2.SMB3EncryptionCipher;
import com.hierynomus.mssmb2.SMB3HashAlgorithm;
import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.mssmb2.messages.SMB2NegotiateRequest;
import com.hierynomus.mssmb2.messages.SMB2NegotiateResponse;
import com.hierynomus.mssmb2.messages.negotiate.SMB2CompressionCapabilities;
import com.hierynomus.mssmb2.messages.negotiate.SMB2EncryptionCapabilities;
import com.hierynomus.mssmb2.messages.negotiate.SMB2NegotiateContext;
import com.hierynomus.mssmb2.messages.negotiate.SMB2NegotiateContextType;
import com.hierynomus.mssmb2.messages.negotiate.SMB2PreauthIntegrityCapabilities;
import com.hierynomus.protocol.commons.concurrent.Futures;
import com.hierynomus.protocol.transport.TransportException;
import com.hierynomus.security.MessageDigest;
import com.hierynomus.security.SecurityException;
import com.hierynomus.smb.Packets;
import com.hierynomus.smb.SMBPacket;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hierynomus.smbj.server.Server;
import com.hierynomus.smbj.utils.DigestUtil;
import da.b;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
class SMBProtocolNegotiator {
    private static final int SALT_LENGTH = 32;
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) SMBProtocolNegotiator.class);
    private final SmbConfig config;
    private Connection connection;
    private final ConnectionContext connectionContext;
    private NegotiationContext negotiationContext = new NegotiationContext();

    /* renamed from: com.hierynomus.smbj.connection.SMBProtocolNegotiator$1, reason: invalid class name */
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
        }
    }

    public static class NegotiationContext {
        private SMB3EncryptionCipher cipher;
        private Set<SMB3CompressionAlgorithm> compressionIds = EnumSet.noneOf(SMB3CompressionAlgorithm.class);
        private SMBPacket<?, ?> negotiationRequest;
        private SMB2NegotiateResponse negotiationResponse;
        private SMB3HashAlgorithm preauthIntegrityHashId;
        private byte[] preauthIntegrityHashValue;
        private Server server;

        public SMB3EncryptionCipher getCipher() {
            return this.cipher;
        }

        public Set<SMB3CompressionAlgorithm> getCompressionIds() {
            return this.compressionIds;
        }

        public SMBPacket<?, ?> getNegotiationRequest() {
            return this.negotiationRequest;
        }

        public SMB2NegotiateResponse getNegotiationResponse() {
            return this.negotiationResponse;
        }

        public SMB3HashAlgorithm getPreauthIntegrityHashId() {
            return this.preauthIntegrityHashId;
        }

        public byte[] getPreauthIntegrityHashValue() {
            return this.preauthIntegrityHashValue;
        }

        public Server getServer() {
            return this.server;
        }
    }

    public SMBProtocolNegotiator(Connection connection, SmbConfig smbConfig, ConnectionContext connectionContext) {
        this.connection = connection;
        this.config = smbConfig;
        this.connectionContext = connectionContext;
    }

    private byte[] calculatePreauthHashValue() {
        byte[] packetBytes = Packets.getPacketBytes(this.negotiationContext.negotiationRequest);
        byte[] packetBytes2 = Packets.getPacketBytes(this.negotiationContext.negotiationResponse);
        String algorithmName = this.negotiationContext.preauthIntegrityHashId.getAlgorithmName();
        try {
            MessageDigest digest = this.config.getSecurityProvider().getDigest(algorithmName);
            return DigestUtil.digest(digest, DigestUtil.digest(digest, new byte[digest.getDigestLength()], packetBytes), packetBytes2);
        } catch (SecurityException e7) {
            throw new SMBRuntimeException(b.c("Cannot get the message digest for ", algorithmName), e7);
        }
    }

    private void handleCompressionNegotiateContext(SMB2CompressionCapabilities sMB2CompressionCapabilities) {
        List<SMB3CompressionAlgorithm> compressionAlgorithms = sMB2CompressionCapabilities.getCompressionAlgorithms();
        if (compressionAlgorithms.size() == 0) {
            throw new IllegalStateException("The SMB2CompressionCapabilities NegotiateContext should contain at least 1 algorithm");
        }
        if (compressionAlgorithms.size() == 1 && compressionAlgorithms.get(0) == SMB3CompressionAlgorithm.NONE) {
            logger.info("SMB3CompressionAlgorithm is 'NONE', continuing without compression");
        } else {
            this.negotiationContext.compressionIds = EnumSet.copyOf((Collection) compressionAlgorithms);
        }
    }

    private void handleEncryptionNegotiateContext(SMB2EncryptionCapabilities sMB2EncryptionCapabilities) {
        List<SMB3EncryptionCipher> cipherList = sMB2EncryptionCapabilities.getCipherList();
        if (cipherList.size() != 1) {
            throw new IllegalStateException("The SMB2EncryptionCapabilities NegotiateContext does not contain exactly 1 cipher");
        }
        this.negotiationContext.cipher = cipherList.get(0);
    }

    private void handlePreAuthNegotiateContext(SMB2PreauthIntegrityCapabilities sMB2PreauthIntegrityCapabilities) {
        if (sMB2PreauthIntegrityCapabilities.getHashAlgorithms().size() != 1) {
            throw new IllegalStateException("The SMB2PreauthIntegrityCapabilities NegotiateContext does not contain exactly 1 hash algorithm");
        }
        this.negotiationContext.preauthIntegrityHashId = sMB2PreauthIntegrityCapabilities.getHashAlgorithms().get(0);
        this.negotiationContext.preauthIntegrityHashValue = calculatePreauthHashValue();
    }

    private void initializeNegotiationContext() {
        SMB2Dialect dialect = this.negotiationContext.negotiationResponse.getDialect();
        if (dialect != SMB2Dialect.SMB_3_1_1) {
            if (dialect.isSmb3x() && this.negotiationContext.negotiationResponse.getCapabilities().contains(SMB2GlobalCapability.SMB2_GLOBAL_CAP_ENCRYPTION)) {
                this.negotiationContext.cipher = SMB3EncryptionCipher.AES_128_CCM;
                return;
            }
            return;
        }
        List<SMB2NegotiateContext> negotiateContextList = this.negotiationContext.negotiationResponse.getNegotiateContextList();
        if (negotiateContextList == null) {
            throw new IllegalStateException("negotiate context list is null for SMB 3.1.1 dialect");
        }
        boolean z = false;
        boolean z4 = false;
        boolean z10 = false;
        for (SMB2NegotiateContext sMB2NegotiateContext : negotiateContextList) {
            int i10 = AnonymousClass1.$SwitchMap$com$hierynomus$mssmb2$messages$negotiate$SMB2NegotiateContextType[sMB2NegotiateContext.getNegotiateContextType().ordinal()];
            if (i10 == 1) {
                if (z) {
                    throw new IllegalStateException("SMB2_PREAUTH_INTEGRITY_CAPABILITIES should only appear once in the NegotiateContextList");
                }
                handlePreAuthNegotiateContext((SMB2PreauthIntegrityCapabilities) sMB2NegotiateContext);
                z = true;
            } else if (i10 != 2) {
                if (i10 != 3) {
                    throw new IllegalStateException("unknown negotiate context type");
                }
                if (z10) {
                    throw new IllegalStateException("SMB2_COMPRESSION_CAPABILITIES should only appear once in the NegotiateContextList");
                }
                handleCompressionNegotiateContext((SMB2CompressionCapabilities) sMB2NegotiateContext);
                z10 = true;
            } else {
                if (z4) {
                    throw new IllegalStateException("SMB2_ENCRYPTION_CAPABILITIES should only appear once in the NegotiateContextList");
                }
                handleEncryptionNegotiateContext((SMB2EncryptionCapabilities) sMB2NegotiateContext);
                z4 = true;
            }
        }
    }

    private void initializeOrValidateServerDetails() throws TransportException {
        Server server = this.connectionContext.getServer();
        SMB2NegotiateResponse sMB2NegotiateResponse = this.negotiationContext.negotiationResponse;
        server.init(sMB2NegotiateResponse.getServerGuid(), sMB2NegotiateResponse.getDialect(), sMB2NegotiateResponse.getSecurityMode(), sMB2NegotiateResponse.getCapabilities());
        Server serverLookup = this.connection.serverList.lookup(server.getServerName());
        if (serverLookup == null) {
            this.connection.serverList.registerServer(server);
            this.negotiationContext.server = server;
        } else {
            if (!server.validate(serverLookup)) {
                throw new TransportException(g.b.A("Different server found for same hostname '", server.getServerName(), "', disconnecting..."));
            }
            this.negotiationContext.server = serverLookup;
        }
    }

    private SMB2NegotiateResponse multiProtocolNegotiate() {
        SMB1ComNegotiateRequest sMB1ComNegotiateRequest = new SMB1ComNegotiateRequest(this.config.getSupportedDialects());
        long j10 = this.connection.sequenceWindow.get();
        if (j10 != 0) {
            throw new IllegalStateException("The SMBv1 SMB_COM_NEGOTIATE packet needs to be the first packet sent.");
        }
        Request request = new Request(sMB1ComNegotiateRequest, j10, UUID.randomUUID());
        this.connection.outstandingRequests.registerOutstanding(request);
        this.negotiationContext.negotiationRequest = sMB1ComNegotiateRequest;
        this.connection.transport.write(sMB1ComNegotiateRequest);
        SMB2Packet sMB2Packet = (SMB2Packet) Futures.get(request.getFuture(null), this.config.getTransactTimeout(), TimeUnit.MILLISECONDS, TransportException.Wrapper);
        if (sMB2Packet instanceof SMB2NegotiateResponse) {
            SMB2NegotiateResponse sMB2NegotiateResponse = (SMB2NegotiateResponse) sMB2Packet;
            return sMB2NegotiateResponse.getDialect() == SMB2Dialect.SMB_2XX ? smb2OnlyNegotiate() : sMB2NegotiateResponse;
        }
        throw new IllegalStateException("Expected a SMB2 NEGOTIATE Response to our SMB_COM_NEGOTIATE, but got: " + sMB2Packet);
    }

    private SMB2NegotiateResponse smb2OnlyNegotiate() {
        byte[] bArr = new byte[32];
        this.config.getRandomProvider().nextBytes(bArr);
        SMB2NegotiateRequest sMB2NegotiateRequest = new SMB2NegotiateRequest(this.config.getSupportedDialects(), this.connectionContext.getClientGuid(), this.config.isSigningRequired(), this.config.getClientCapabilities(), bArr);
        this.negotiationContext.negotiationRequest = sMB2NegotiateRequest;
        return (SMB2NegotiateResponse) this.connection.sendAndReceive(sMB2NegotiateRequest);
    }

    public void negotiateDialect() throws TransportException {
        Logger logger2 = logger;
        logger2.debug("Negotiating dialects {}", this.config.getSupportedDialects());
        SMB2NegotiateResponse sMB2NegotiateResponseMultiProtocolNegotiate = this.config.isUseMultiProtocolNegotiate() ? multiProtocolNegotiate() : smb2OnlyNegotiate();
        this.negotiationContext.negotiationResponse = sMB2NegotiateResponseMultiProtocolNegotiate;
        if (!NtStatus.isSuccess(sMB2NegotiateResponseMultiProtocolNegotiate.getHeader().getStatusCode())) {
            throw new SMBApiException(sMB2NegotiateResponseMultiProtocolNegotiate.getHeader(), "Failure during dialect negotiation");
        }
        initializeNegotiationContext();
        initializeOrValidateServerDetails();
        this.connectionContext.negotiated(this.negotiationContext);
        logger2.debug("Negotiated the following connection settings: {}", this.connectionContext);
    }
}
