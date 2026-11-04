package com.hierynomus.smbj.auth;

import com.hierynomus.asn1.types.primitive.ASN1ObjectIdentifier;
import com.hierynomus.msdtyp.FileTime;
import com.hierynomus.ntlm.NtlmConfig;
import com.hierynomus.ntlm.NtlmException;
import com.hierynomus.ntlm.av.AvId;
import com.hierynomus.ntlm.av.AvPairFlags;
import com.hierynomus.ntlm.av.AvPairString;
import com.hierynomus.ntlm.av.AvPairTimestamp;
import com.hierynomus.ntlm.functions.ComputedNtlmV2Response;
import com.hierynomus.ntlm.functions.NtlmFunctions;
import com.hierynomus.ntlm.functions.NtlmV2Functions;
import com.hierynomus.ntlm.messages.NtlmAuthenticate;
import com.hierynomus.ntlm.messages.NtlmChallenge;
import com.hierynomus.ntlm.messages.NtlmNegotiate;
import com.hierynomus.ntlm.messages.NtlmNegotiateFlag;
import com.hierynomus.ntlm.messages.TargetInfo;
import com.hierynomus.protocol.commons.ByteArrayUtils;
import com.hierynomus.protocol.commons.Factory;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.commons.buffer.Endian;
import com.hierynomus.security.SecurityProvider;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hierynomus.smbj.connection.ConnectionContext;
import com.hierynomus.spnego.NegTokenInit;
import com.hierynomus.spnego.NegTokenTarg;
import com.hierynomus.spnego.SpnegoException;
import com.hierynomus.spnego.SpnegoToken;
import com.hierynomus.utils.Strings;
import j$.util.Collection;
import java.io.IOException;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class NtlmAuthenticator implements Authenticator {
    private NtlmConfig config;
    private NtlmV2Functions functions;
    private Set<NtlmNegotiateFlag> negotiateFlags;
    private byte[] negotiateMessage;
    private Random random;
    private SecurityProvider securityProvider;
    private State state;
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) NtlmAuthenticator.class);
    private static final ASN1ObjectIdentifier NTLMSSP = new ASN1ObjectIdentifier("1.3.6.1.4.1.311.2.2.10");

    public static class Factory implements Factory.Named<Authenticator> {
        @Override // com.hierynomus.protocol.commons.Factory.Named
        public String getName() {
            return NtlmAuthenticator.NTLMSSP.getValue();
        }

        @Override // com.hierynomus.protocol.commons.Factory
        public NtlmAuthenticator create() {
            return new NtlmAuthenticator();
        }
    }

    public enum State {
        NEGOTIATE,
        AUTHENTICATE,
        COMPLETE
    }

    private TargetInfo createClientTargetInfo(NtlmChallenge ntlmChallenge) {
        if (ntlmChallenge.getTargetInfo() == null) {
            return null;
        }
        TargetInfo targetInfoCopy = ntlmChallenge.getTargetInfo().copy();
        if (this.config.isIntegrityEnabled() && ntlmChallenge.getTargetInfo().hasAvPair(AvId.MsvAvTimestamp)) {
            AvId avId = AvId.MsvAvFlags;
            targetInfoCopy.putAvPair(new AvPairFlags(targetInfoCopy.hasAvPair(avId) ? 2 | ((Long) targetInfoCopy.getAvPair(avId).getValue()).longValue() : 2L));
        }
        if (ntlmChallenge.getNegotiateFlags().contains(NtlmNegotiateFlag.NTLMSSP_REQUEST_TARGET)) {
            AvPairString avPairString = (AvPairString) targetInfoCopy.getAvPair(AvId.MsvAvDnsComputerName);
            if (avPairString != null) {
                targetInfoCopy.putAvPair(new AvPairString(AvId.MsvAvTargetName, String.format("cifs/%s", avPairString.getValue())));
            }
        } else {
            targetInfoCopy.putAvPair(new AvPairString(AvId.MsvAvTargetName, ""));
        }
        return targetInfoCopy;
    }

    private AuthenticateResponse doAuthenticate(AuthenticationContext authenticationContext, NtlmChallenge ntlmChallenge, byte[] bArr) {
        byte[] bArrRc4k;
        AuthenticateResponse authenticateResponse = new AuthenticateResponse();
        authenticateResponse.setWindowsVersion(ntlmChallenge.getVersion());
        if (ntlmChallenge.getTargetInfo() != null) {
            TargetInfo targetInfo = ntlmChallenge.getTargetInfo();
            AvId avId = AvId.MsvAvNbComputerName;
            if (targetInfo.hasAvPair(avId)) {
                authenticateResponse.setNetBiosName((String) ntlmChallenge.getTargetInfo().getAvPair(avId).getValue());
            }
        }
        if (authenticationContext.isAnonymous()) {
            authenticateResponse.setNegToken(negTokenTarg(new NtlmAuthenticate(null, null, authenticationContext.getUsername(), authenticationContext.getDomain(), this.config.getWorkstationName(), null, this.negotiateFlags, this.config.getWindowsVersion())));
            return authenticateResponse;
        }
        this.negotiateFlags.add(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_TARGET_INFO);
        TargetInfo targetInfoCreateClientTargetInfo = createClientTargetInfo(ntlmChallenge);
        long windowsTimeStamp = FileTime.now().getWindowsTimeStamp();
        if (targetInfoCreateClientTargetInfo != null) {
            AvId avId2 = AvId.MsvAvTimestamp;
            if (targetInfoCreateClientTargetInfo.hasAvPair(avId2)) {
                windowsTimeStamp = ((AvPairTimestamp) targetInfoCreateClientTargetInfo.getAvPair(avId2)).getValue().getWindowsTimeStamp();
            }
        }
        ComputedNtlmV2Response computedNtlmV2ResponseComputeResponse = this.functions.computeResponse(authenticationContext.getUsername(), authenticationContext.getDomain(), authenticationContext.getPassword(), ntlmChallenge, windowsTimeStamp, targetInfoCreateClientTargetInfo);
        byte[] sessionBaseKey = computedNtlmV2ResponseComputeResponse.getSessionBaseKey();
        byte[] ntResponse = computedNtlmV2ResponseComputeResponse.getNtResponse();
        byte[] bArr2 = new byte[0];
        byte[] bArrKxKey = this.functions.kxKey(sessionBaseKey, computedNtlmV2ResponseComputeResponse.getLmResponse(), ntlmChallenge.getServerChallenge());
        EnumSet<NtlmNegotiateFlag> negotiateFlags = ntlmChallenge.getNegotiateFlags();
        if (negotiateFlags.contains(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_KEY_EXCH) && (negotiateFlags.contains(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_SEAL) || negotiateFlags.contains(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_SIGN) || negotiateFlags.contains(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_ALWAYS_SIGN))) {
            byte[] bArr3 = new byte[16];
            this.random.nextBytes(bArr3);
            bArrRc4k = NtlmFunctions.rc4k(this.securityProvider, bArrKxKey, bArr3);
            bArrKxKey = bArr3;
        } else {
            bArrRc4k = bArrKxKey;
        }
        NtlmAuthenticate ntlmAuthenticate = new NtlmAuthenticate(bArr2, ntResponse, authenticationContext.getUsername(), authenticationContext.getDomain(), this.config.getWorkstationName(), bArrRc4k, negotiateFlags, this.config.getWindowsVersion());
        AvPairFlags avPairFlags = targetInfoCreateClientTargetInfo != null ? (AvPairFlags) targetInfoCreateClientTargetInfo.getAvPair(AvId.MsvAvFlags) : null;
        if (avPairFlags != null && (avPairFlags.getValue().longValue() & 2) > 0) {
            ntlmAuthenticate.setMic(new byte[16]);
            Buffer.PlainBuffer plainBuffer = new Buffer.PlainBuffer(Endian.LE);
            ntlmAuthenticate.write(plainBuffer);
            ntlmAuthenticate.setMic(NtlmFunctions.hmac_md5(this.securityProvider, bArrKxKey, this.negotiateMessage, bArr, plainBuffer.getCompactData()));
        }
        authenticateResponse.setSessionKey(bArrKxKey);
        logger.trace("Sending NTLM authenticate message: {}", ntlmAuthenticate);
        authenticateResponse.setNegToken(negTokenTarg(ntlmAuthenticate));
        authenticateResponse.setNegotiateFlags(this.negotiateFlags);
        return authenticateResponse;
    }

    private AuthenticateResponse doNegotiate(AuthenticationContext authenticationContext, byte[] bArr) {
        AuthenticateResponse authenticateResponse = new AuthenticateResponse();
        this.negotiateFlags = EnumSet.of(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_128, NtlmNegotiateFlag.NTLMSSP_REQUEST_TARGET, NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY);
        if (!this.config.isOmitVersion() && this.config.getWindowsVersion() != null) {
            this.negotiateFlags.add(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_VERSION);
        }
        if (!authenticationContext.isAnonymous()) {
            this.negotiateFlags.add(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_SIGN);
            this.negotiateFlags.add(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_ALWAYS_SIGN);
            this.negotiateFlags.add(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_KEY_EXCH);
        } else if (authenticationContext.isGuest()) {
            this.negotiateFlags.add(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_KEY_EXCH);
        } else {
            this.negotiateFlags.add(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_ANONYMOUS);
        }
        if (!this.negotiateFlags.contains(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_VERSION)) {
            if (Strings.isNotBlank(authenticationContext.getDomain())) {
                this.negotiateFlags.add(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_OEM_DOMAIN_SUPPLIED);
            }
            if (Strings.isNotBlank(this.config.getWorkstationName())) {
                this.negotiateFlags.add(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_OEM_WORKSTATION_SUPPLIED);
            }
        }
        NtlmNegotiate ntlmNegotiate = new NtlmNegotiate(this.negotiateFlags, authenticationContext.getDomain(), this.config.getWorkstationName(), this.config.getWindowsVersion(), this.config.isOmitVersion());
        logger.trace("Sending NTLM negotiate message: {}", this.negotiateMessage);
        authenticateResponse.setNegToken(negTokenInit(ntlmNegotiate));
        authenticateResponse.setNegotiateFlags(this.negotiateFlags);
        return authenticateResponse;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$authenticate$0(NtlmChallenge ntlmChallenge, NtlmNegotiateFlag ntlmNegotiateFlag) {
        return !ntlmChallenge.getNegotiateFlags().contains(ntlmNegotiateFlag);
    }

    private SpnegoToken negTokenInit(NtlmNegotiate ntlmNegotiate) {
        NegTokenInit negTokenInit = new NegTokenInit();
        negTokenInit.addSupportedMech(NTLMSSP);
        Buffer.PlainBuffer plainBuffer = new Buffer.PlainBuffer(Endian.LE);
        ntlmNegotiate.write(plainBuffer);
        byte[] compactData = plainBuffer.getCompactData();
        this.negotiateMessage = compactData;
        negTokenInit.setMechToken(compactData);
        return negTokenInit;
    }

    private SpnegoToken negTokenTarg(NtlmAuthenticate ntlmAuthenticate) {
        NegTokenTarg negTokenTarg = new NegTokenTarg();
        Buffer.PlainBuffer plainBuffer = new Buffer.PlainBuffer(Endian.LE);
        ntlmAuthenticate.write(plainBuffer);
        negTokenTarg.setResponseToken(plainBuffer.getCompactData());
        return negTokenTarg;
    }

    @Override // com.hierynomus.smbj.auth.Authenticator
    public AuthenticateResponse authenticate(AuthenticationContext authenticationContext, byte[] bArr, ConnectionContext connectionContext) throws IOException {
        try {
            State state = this.state;
            State state2 = State.COMPLETE;
            if (state == state2) {
                return null;
            }
            if (state == State.NEGOTIATE) {
                logger.debug("Initialized Authentication of {} using NTLM", authenticationContext.getUsername());
                this.state = State.AUTHENTICATE;
                return doNegotiate(authenticationContext, bArr);
            }
            Logger logger2 = logger;
            logger2.debug("Received token: {}", ByteArrayUtils.printHex(bArr));
            NegTokenTarg negTokenTarg = new NegTokenTarg().read(bArr);
            NtlmChallenge ntlmChallenge = new NtlmChallenge();
            try {
                ntlmChallenge.read(new Buffer.PlainBuffer(negTokenTarg.getResponseToken(), Endian.LE));
                logger2.trace("Received NTLM challenge: {}", ntlmChallenge);
                logger2.debug("Received NTLM challenge from: {}", ntlmChallenge.getTargetName());
                Collection.EL.removeIf(this.negotiateFlags, new a(0, ntlmChallenge));
                if (!this.negotiateFlags.contains(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_128)) {
                    throw new NtlmException("Server does not support 128-bit encryption");
                }
                AuthenticateResponse authenticateResponseDoAuthenticate = doAuthenticate(authenticationContext, ntlmChallenge, negTokenTarg.getResponseToken());
                this.state = state2;
                return authenticateResponseDoAuthenticate;
            } catch (Buffer.BufferException e7) {
                throw new IOException(e7);
            }
        } catch (SpnegoException e10) {
            throw new SMBRuntimeException(e10);
        }
    }

    @Override // com.hierynomus.smbj.auth.Authenticator
    public void init(SmbConfig smbConfig) {
        this.securityProvider = smbConfig.getSecurityProvider();
        this.random = smbConfig.getRandomProvider();
        this.config = smbConfig.getNtlmConfig();
        this.state = State.NEGOTIATE;
        this.negotiateFlags = new HashSet();
        this.functions = new NtlmV2Functions(this.random, this.securityProvider);
    }

    @Override // com.hierynomus.smbj.auth.Authenticator
    public boolean supports(AuthenticationContext authenticationContext) {
        return authenticationContext.getClass().equals(AuthenticationContext.class);
    }
}
