package com.hierynomus.smbj.paths;

import com.hierynomus.msdfsc.DFSException;
import com.hierynomus.msdfsc.DFSPath;
import com.hierynomus.msdfsc.DomainCache;
import com.hierynomus.msdfsc.ReferralCache;
import com.hierynomus.msdfsc.messages.SMB2GetDFSReferralRequest;
import com.hierynomus.msdfsc.messages.SMB2GetDFSReferralResponse;
import com.hierynomus.mserref.NtStatus;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.mssmb2.messages.SMB2IoctlResponse;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.commons.concurrent.Futures;
import com.hierynomus.protocol.transport.TransportException;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.common.SmbPath;
import com.hierynomus.smbj.io.BufferByteChunkProvider;
import com.hierynomus.smbj.paths.PathResolver;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.Share;
import com.hierynomus.smbj.share.StatusHandler;
import g.b;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class DFSPathResolver implements PathResolver {
    private static final long FSCTL_DFS_GET_REFERRALS = 393620;
    private static final long FSCTL_DFS_GET_REFERRALS_EX = 393648;
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) DFSPathResolver.class);
    private final StatusHandler statusHandler;
    private long transactTimeout;
    private final PathResolver wrapped;
    private ReferralCache referralCache = new ReferralCache();
    private DomainCache domainCache = new DomainCache();

    public enum DfsRequestType {
        DOMAIN,
        DC,
        SYSVOL,
        ROOT,
        LINK
    }

    public static class ReferralResult {
        DomainCache.DomainCacheEntry domainCacheEntry;
        ReferralCache.ReferralCacheEntry referralCacheEntry;
        long status;

        private ReferralResult(long j10) {
            this.status = j10;
        }

        private ReferralResult(DomainCache.DomainCacheEntry domainCacheEntry) {
            this.domainCacheEntry = domainCacheEntry;
        }
    }

    public static class ResolveState<T> {
        final PathResolver.ResolveAction<T> action;
        DFSPath path;
        boolean resolvedDomainEntry = false;
        boolean isDFSPath = false;
        String hostName = null;

        public ResolveState(DFSPath dFSPath, PathResolver.ResolveAction<T> resolveAction) {
            this.path = dFSPath;
            this.action = resolveAction;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("ResolveState{path=");
            sb2.append(this.path);
            sb2.append(", resolvedDomainEntry=");
            sb2.append(this.resolvedDomainEntry);
            sb2.append(", isDFSPath=");
            sb2.append(this.isDFSPath);
            sb2.append(", hostName='");
            return b.l(this.hostName, "'}", sb2);
        }
    }

    public DFSPathResolver(final PathResolver pathResolver, long j10) {
        this.wrapped = pathResolver;
        this.transactTimeout = j10;
        this.statusHandler = new StatusHandler() { // from class: com.hierynomus.smbj.paths.DFSPathResolver.1
            @Override // com.hierynomus.smbj.share.StatusHandler
            public boolean isSuccess(long j11) {
                return j11 == NtStatus.STATUS_PATH_NOT_COVERED.getValue() || pathResolver.statusHandler().isSuccess(j11);
            }
        };
    }

    private ReferralResult getReferral(DfsRequestType dfsRequestType, Share share, DFSPath dFSPath) {
        SMB2GetDFSReferralRequest sMB2GetDFSReferralRequest = new SMB2GetDFSReferralRequest(dFSPath.toPath());
        SMBBuffer sMBBuffer = new SMBBuffer();
        sMB2GetDFSReferralRequest.writeTo(sMBBuffer);
        return handleReferralResponse(dfsRequestType, (SMB2IoctlResponse) Futures.get(share.ioctlAsync(FSCTL_DFS_GET_REFERRALS, true, new BufferByteChunkProvider(sMBBuffer)), this.transactTimeout, TimeUnit.MILLISECONDS, TransportException.Wrapper), dFSPath);
    }

    private void handleDCReferralResponse(ReferralResult referralResult, SMB2GetDFSReferralResponse sMB2GetDFSReferralResponse) {
        if (sMB2GetDFSReferralResponse.getVersionNumber() < 3) {
            return;
        }
        DomainCache.DomainCacheEntry domainCacheEntry = new DomainCache.DomainCacheEntry(sMB2GetDFSReferralResponse);
        this.domainCache.put(domainCacheEntry);
        referralResult.domainCacheEntry = domainCacheEntry;
    }

    private ReferralResult handleReferralResponse(DfsRequestType dfsRequestType, SMB2IoctlResponse sMB2IoctlResponse, DFSPath dFSPath) {
        ReferralResult referralResult = new ReferralResult(sMB2IoctlResponse.getHeader().getStatusCode());
        if (referralResult.status == NtStatus.STATUS_SUCCESS.getValue()) {
            SMB2GetDFSReferralResponse sMB2GetDFSReferralResponse = new SMB2GetDFSReferralResponse(dFSPath.toPath());
            sMB2GetDFSReferralResponse.read(new SMBBuffer(sMB2IoctlResponse.getOutputBuffer()));
            int iOrdinal = dfsRequestType.ordinal();
            if (iOrdinal == 0) {
                throw new UnsupportedOperationException(DfsRequestType.DOMAIN + " not used yet.");
            }
            if (iOrdinal == 1) {
                handleDCReferralResponse(referralResult, sMB2GetDFSReferralResponse);
            } else {
                if (iOrdinal != 2 && iOrdinal != 3 && iOrdinal != 4) {
                    throw new IllegalStateException("Encountered unhandled DFS RequestType: " + dfsRequestType);
                }
                handleRootOrLinkReferralResponse(referralResult, sMB2GetDFSReferralResponse);
            }
        }
        return referralResult;
    }

    private void handleRootOrLinkReferralResponse(ReferralResult referralResult, SMB2GetDFSReferralResponse sMB2GetDFSReferralResponse) {
        if (sMB2GetDFSReferralResponse.getReferralEntries().isEmpty()) {
            referralResult.status = NtStatus.STATUS_OBJECT_PATH_NOT_FOUND.getValue();
            return;
        }
        ReferralCache.ReferralCacheEntry referralCacheEntry = new ReferralCache.ReferralCacheEntry(sMB2GetDFSReferralResponse, this.domainCache);
        logger.info("Got DFS Referral result: {}", referralCacheEntry);
        this.referralCache.put(referralCacheEntry);
        referralResult.referralCacheEntry = referralCacheEntry;
    }

    private ReferralResult sendDfsReferralRequest(DfsRequestType dfsRequestType, String str, Session session, DFSPath dFSPath) throws DFSException {
        if (!str.equals(session.getConnection().getRemoteHostname())) {
            try {
                session = session.getConnection().getClient().connect(str).authenticate(session.getAuthenticationContext());
            } catch (IOException e7) {
                throw new DFSException(e7);
            }
        }
        try {
            return getReferral(dfsRequestType, session.connectShare("IPC$"), dFSPath);
        } catch (Buffer.BufferException | IOException e10) {
            throw new DFSException(e10);
        }
    }

    private <T> T start(Session session, SmbPath smbPath, PathResolver.ResolveAction<T> resolveAction) {
        logger.info("Starting DFS resolution for {}", smbPath.toUncPath());
        return (T) step1(session, new ResolveState<>(new DFSPath(smbPath.toUncPath()), resolveAction));
    }

    private <T> T step1(Session session, ResolveState<T> resolveState) {
        logger.trace("DFS[1]: {}", resolveState);
        return (resolveState.path.hasOnlyOnePathComponent() || resolveState.path.isIpc()) ? (T) step12(resolveState) : (T) step2(session, resolveState);
    }

    private <T> T step10(Session session, ResolveState<T> resolveState, DomainCache.DomainCacheEntry domainCacheEntry) throws DFSException {
        logger.trace("DFS[10]: {}", resolveState);
        ReferralResult referralResultSendDfsReferralRequest = sendDfsReferralRequest(DfsRequestType.SYSVOL, domainCacheEntry.getDCHint(), session, resolveState.path);
        return NtStatus.isSuccess(referralResultSendDfsReferralRequest.status) ? (T) step3(session, resolveState, referralResultSendDfsReferralRequest.referralCacheEntry) : (T) step13(session, resolveState, referralResultSendDfsReferralRequest);
    }

    private <T> T step11(Session session, ResolveState<T> resolveState, ReferralCache.ReferralCacheEntry referralCacheEntry) {
        logger.trace("DFS[11]: {}", resolveState);
        resolveState.path = resolveState.path.replacePrefix(referralCacheEntry.getDfsPathPrefix(), referralCacheEntry.getTargetHint().getTargetPath());
        resolveState.isDFSPath = true;
        return (T) step2(session, resolveState);
    }

    private <T> T step12(ResolveState<T> resolveState) {
        logger.trace("DFS[12]: {}", resolveState);
        return resolveState.action.apply(SmbPath.parse(resolveState.path.toPath()));
    }

    private <T> T step13(Session session, ResolveState<T> resolveState, ReferralResult referralResult) throws DFSException {
        logger.trace("DFS[13]: {}", resolveState);
        throw new DFSException(referralResult.status, b.l(resolveState.path.getPathComponents().get(0), "'", new StringBuilder("Cannot get DC for domain '")));
    }

    private <T> T step14(Session session, ResolveState<T> resolveState, ReferralResult referralResult) throws DFSException {
        logger.trace("DFS[14]: {}", resolveState);
        throw new DFSException(referralResult.status, "DFS request failed for path " + resolveState.path);
    }

    private <T> T step2(Session session, ResolveState<T> resolveState) {
        logger.trace("DFS[2]: {}", resolveState);
        ReferralCache.ReferralCacheEntry referralCacheEntryLookup = this.referralCache.lookup(resolveState.path);
        return (referralCacheEntryLookup == null || (referralCacheEntryLookup.isExpired() && referralCacheEntryLookup.isRoot())) ? (T) step5(session, resolveState) : referralCacheEntryLookup.isExpired() ? (T) step9(session, resolveState, referralCacheEntryLookup) : referralCacheEntryLookup.isLink() ? (T) step4(session, resolveState, referralCacheEntryLookup) : (T) step3(session, resolveState, referralCacheEntryLookup);
    }

    private <T> T step3(Session session, ResolveState<T> resolveState, ReferralCache.ReferralCacheEntry referralCacheEntry) {
        logger.trace("DFS[3]: {}", resolveState);
        ReferralCache.TargetSetEntry targetHint = referralCacheEntry.getTargetHint();
        DFSPath dFSPath = resolveState.path;
        SMBApiException e7 = null;
        while (targetHint != null) {
            try {
                resolveState.path = resolveState.path.replacePrefix(referralCacheEntry.getDfsPathPrefix(), referralCacheEntry.getTargetHint().getTargetPath());
                resolveState.isDFSPath = true;
                return (T) step8(session, resolveState, referralCacheEntry);
            } catch (SMBApiException e10) {
                e7 = e10;
                if (e7.getStatusCode() != NtStatus.STATUS_PATH_NOT_COVERED.getValue()) {
                    targetHint = referralCacheEntry.nextTargetHint();
                    resolveState.path = dFSPath;
                }
            }
        }
        if (e7 != null) {
            throw e7;
        }
        throw new IllegalStateException("Unknown error resolving DFS");
    }

    private <T> T step4(Session session, ResolveState<T> resolveState, ReferralCache.ReferralCacheEntry referralCacheEntry) {
        logger.trace("DFS[4]: {}", resolveState);
        return resolveState.path.isSysVolOrNetLogon() ? (T) step3(session, resolveState, referralCacheEntry) : referralCacheEntry.isInterlink() ? (T) step11(session, resolveState, referralCacheEntry) : (T) step3(session, resolveState, referralCacheEntry);
    }

    private <T> T step5(Session session, ResolveState<T> resolveState) throws DFSException {
        logger.trace("DFS[5]: {}", resolveState);
        String str = resolveState.path.getPathComponents().get(0);
        DomainCache.DomainCacheEntry domainCacheEntryLookup = this.domainCache.lookup(str);
        if (domainCacheEntryLookup == null) {
            resolveState.hostName = str;
            resolveState.resolvedDomainEntry = false;
            return (T) step6(session, resolveState);
        }
        if (domainCacheEntryLookup.getDCHint() == null || domainCacheEntryLookup.getDCHint().isEmpty()) {
            ReferralResult referralResultSendDfsReferralRequest = sendDfsReferralRequest(DfsRequestType.DC, session.getAuthenticationContext().getDomain(), session, resolveState.path);
            if (!NtStatus.isSuccess(referralResultSendDfsReferralRequest.status)) {
                return (T) step13(session, resolveState, referralResultSendDfsReferralRequest);
            }
            domainCacheEntryLookup = referralResultSendDfsReferralRequest.domainCacheEntry;
        }
        if (resolveState.path.isSysVolOrNetLogon()) {
            return (T) step10(session, resolveState, domainCacheEntryLookup);
        }
        resolveState.hostName = domainCacheEntryLookup.getDCHint();
        resolveState.resolvedDomainEntry = true;
        return (T) step6(session, resolveState);
    }

    private <T> T step6(Session session, ResolveState<T> resolveState) throws DFSException {
        logger.trace("DFS[6]: {}", resolveState);
        ReferralResult referralResultSendDfsReferralRequest = sendDfsReferralRequest(DfsRequestType.ROOT, resolveState.path.getPathComponents().get(0), session, resolveState.path);
        return NtStatus.isSuccess(referralResultSendDfsReferralRequest.status) ? (T) step7(session, resolveState, referralResultSendDfsReferralRequest.referralCacheEntry) : resolveState.resolvedDomainEntry ? (T) step13(session, resolveState, referralResultSendDfsReferralRequest) : resolveState.isDFSPath ? (T) step14(session, resolveState, referralResultSendDfsReferralRequest) : (T) step12(resolveState);
    }

    private <T> T step7(Session session, ResolveState<T> resolveState, ReferralCache.ReferralCacheEntry referralCacheEntry) {
        logger.trace("DFS[7]: {}", resolveState);
        return referralCacheEntry.isRoot() ? (T) step3(session, resolveState, referralCacheEntry) : (T) step4(session, resolveState, referralCacheEntry);
    }

    private <T> T step8(Session session, ResolveState<T> resolveState, ReferralCache.ReferralCacheEntry referralCacheEntry) {
        logger.trace("DFS[8]: {}", resolveState);
        return resolveState.action.apply(SmbPath.parse(resolveState.path.toPath()));
    }

    private <T> T step9(Session session, ResolveState<T> resolveState, ReferralCache.ReferralCacheEntry referralCacheEntry) throws DFSException {
        Logger logger2 = logger;
        logger2.trace("DFS[9]: {}", resolveState);
        DFSPath dFSPath = new DFSPath(resolveState.path.getPathComponents().subList(0, 2));
        ReferralCache.ReferralCacheEntry referralCacheEntryLookup = this.referralCache.lookup(dFSPath);
        if (referralCacheEntryLookup != null) {
            ReferralResult referralResultSendDfsReferralRequest = sendDfsReferralRequest(DfsRequestType.LINK, referralCacheEntryLookup.getTargetHint().getTargetPath().getPathComponents().get(0), session, resolveState.path);
            return !NtStatus.isSuccess(referralResultSendDfsReferralRequest.status) ? (T) step14(session, resolveState, referralResultSendDfsReferralRequest) : referralResultSendDfsReferralRequest.referralCacheEntry.isRoot() ? (T) step3(session, resolveState, referralResultSendDfsReferralRequest.referralCacheEntry) : (T) step4(session, resolveState, referralResultSendDfsReferralRequest.referralCacheEntry);
        }
        logger2.debug("Could not find referral cache entry for {}", dFSPath);
        this.referralCache.clear(resolveState.path);
        return (T) step1(session, resolveState);
    }

    @Override // com.hierynomus.smbj.paths.PathResolver
    public <T> T resolve(Session session, SMB2Packet sMB2Packet, final SmbPath smbPath, final PathResolver.ResolveAction<T> resolveAction) {
        if (!session.getConnection().getConnectionContext().supportsDFS()) {
            return (T) this.wrapped.resolve(session, sMB2Packet, smbPath, resolveAction);
        }
        if (smbPath.getPath() != null && sMB2Packet.getHeader().getStatusCode() == NtStatus.STATUS_PATH_NOT_COVERED.getValue()) {
            logger.info("DFS Share {} does not cover {}, resolve through DFS", smbPath.getShareName(), smbPath);
            return (T) start(session, smbPath, new PathResolver.ResolveAction<T>() { // from class: com.hierynomus.smbj.paths.DFSPathResolver.2
                @Override // com.hierynomus.smbj.paths.PathResolver.ResolveAction
                public T apply(SmbPath smbPath2) {
                    DFSPathResolver.logger.info("DFS resolved {} -> {}", smbPath, smbPath2);
                    return (T) resolveAction.apply(smbPath2);
                }
            });
        }
        if (smbPath.getPath() != null || !NtStatus.isError(sMB2Packet.getHeader().getStatusCode())) {
            return (T) this.wrapped.resolve(session, sMB2Packet, smbPath, resolveAction);
        }
        logger.info("Attempting to resolve {} through DFS", smbPath);
        return (T) start(session, smbPath, resolveAction);
    }

    @Override // com.hierynomus.smbj.paths.PathResolver
    public StatusHandler statusHandler() {
        return this.statusHandler;
    }

    @Override // com.hierynomus.smbj.paths.PathResolver
    public <T> T resolve(Session session, SmbPath smbPath, PathResolver.ResolveAction<T> resolveAction) {
        T t10 = (T) start(session, smbPath, resolveAction);
        if (!smbPath.equals(t10)) {
            logger.info("DFS resolved {} -> {}", smbPath, t10);
            return t10;
        }
        return (T) this.wrapped.resolve(session, smbPath, resolveAction);
    }
}
