package com.rapid7.client.dcerpc.mssrvs;

import bh.b;
import com.hierynomus.protocol.transport.TransportException;
import com.rapid7.client.dcerpc.mserref.SystemErrorCode;
import com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo;
import com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0;
import com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1;
import com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo2;
import com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo501;
import com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo502;
import com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo503;
import com.rapid7.client.dcerpc.mssrvs.messages.NetprPathCanonicalizeRequest;
import com.rapid7.client.dcerpc.mssrvs.messages.NetprPathCanonicalizeResponse;
import com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumRequest;
import com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse;
import com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoRequest;
import com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo0;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo2;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo501;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo502;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo503;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer;
import com.rapid7.client.dcerpc.objects.WChar;
import com.rapid7.client.dcerpc.service.Service;
import com.rapid7.client.dcerpc.transport.RPCTransport;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ServerService extends Service {
    private static final int MAX_BUFFER_SIZE = 1048576;

    public abstract class GetSharesRequest<S extends ShareInfo, N extends NetShareInfo> {
        private final long preferredMaximumLength;
        private final List<N> shares = new ArrayList();

        public GetSharesRequest(long j10) {
            this.preferredMaximumLength = j10;
        }

        public GetSharesRequest<S, N> call() throws TransportException {
            ShareInfoContainer shareInfoContainer;
            ShareInfo[] buffer;
            b bVar = new b();
            while (true) {
                NetrShareEnumResponse netrShareEnumResponse = (NetrShareEnumResponse) ServerService.this.callExpect(createRequest(this.preferredMaximumLength, Long.valueOf(bVar.f2817a)), getName(), SystemErrorCode.ERROR_MORE_DATA, SystemErrorCode.ERROR_SUCCESS);
                ShareEnumStruct shareEnumStruct = netrShareEnumResponse.getShareEnumStruct();
                if (shareEnumStruct != null && (shareInfoContainer = shareEnumStruct.getShareInfoContainer()) != null && (buffer = shareInfoContainer.getBuffer()) != null) {
                    for (ShareInfo shareInfo : buffer) {
                        this.shares.add(convert(shareInfo));
                    }
                }
                if (SystemErrorCode.ERROR_SUCCESS.is(netrShareEnumResponse.getReturnValue())) {
                    return this;
                }
                Long resumeHandle = netrShareEnumResponse.getResumeHandle();
                if (resumeHandle == null) {
                    throw new TransportException("NetrShareEnum resume handle null.");
                }
                if (resumeHandle.longValue() == bVar.f2817a) {
                    throw new TransportException("NetrShareEnum resume handle not updated.");
                }
                bVar.f2817a = resumeHandle.longValue() + bVar.f2817a;
            }
        }

        public abstract N convert(S s8);

        public abstract NetrShareEnumRequest<? extends ShareEnumStruct<? extends ShareInfoContainer<S>>> createRequest(long j10, Long l);

        public abstract String getName();

        public List<N> getShares() {
            return this.shares;
        }
    }

    public class GetSharesRequest0 extends GetSharesRequest<ShareInfo0, NetShareInfo0> {
        public GetSharesRequest0(long j10) {
            super(j10);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetrShareEnumRequest<? extends ShareEnumStruct<? extends ShareInfoContainer<ShareInfo0>>> createRequest(long j10, Long l) {
            return new NetrShareEnumRequest.NetShareEnumRequest0(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public String getName() {
            return "NetrShareEnum[0]";
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetShareInfo0 convert(ShareInfo0 shareInfo0) {
            return ServerService.this.parseShareInfo0(shareInfo0);
        }
    }

    public class GetSharesRequest1 extends GetSharesRequest<ShareInfo1, NetShareInfo1> {
        public GetSharesRequest1(long j10) {
            super(j10);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetrShareEnumRequest<? extends ShareEnumStruct<? extends ShareInfoContainer<ShareInfo1>>> createRequest(long j10, Long l) {
            return new NetrShareEnumRequest.NetShareEnumRequest1(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public String getName() {
            return "NetrShareEnum[1]";
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetShareInfo1 convert(ShareInfo1 shareInfo1) {
            return ServerService.this.parseShareInfo1(shareInfo1);
        }
    }

    public class GetSharesRequest2 extends GetSharesRequest<ShareInfo2, NetShareInfo2> {
        public GetSharesRequest2(long j10) {
            super(j10);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetrShareEnumRequest<? extends ShareEnumStruct<? extends ShareInfoContainer<ShareInfo2>>> createRequest(long j10, Long l) {
            return new NetrShareEnumRequest.NetShareEnumRequest2(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public String getName() {
            return "NetrShareEnum[2]";
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetShareInfo2 convert(ShareInfo2 shareInfo2) {
            return ServerService.this.parseShareInfo2(shareInfo2);
        }
    }

    public class GetSharesRequest501 extends GetSharesRequest<ShareInfo501, NetShareInfo501> {
        public GetSharesRequest501(long j10) {
            super(j10);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetrShareEnumRequest<? extends ShareEnumStruct<? extends ShareInfoContainer<ShareInfo501>>> createRequest(long j10, Long l) {
            return new NetrShareEnumRequest.NetShareEnumRequest501(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public String getName() {
            return "NetrShareEnum[501]";
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetShareInfo501 convert(ShareInfo501 shareInfo501) {
            return ServerService.this.parseShareInfo501(shareInfo501);
        }
    }

    public class GetSharesRequest502 extends GetSharesRequest<ShareInfo502, NetShareInfo502> {
        public GetSharesRequest502(long j10) {
            super(j10);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetrShareEnumRequest<? extends ShareEnumStruct<? extends ShareInfoContainer<ShareInfo502>>> createRequest(long j10, Long l) {
            return new NetrShareEnumRequest.NetShareEnumRequest502(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public String getName() {
            return "NetrShareEnum[502]";
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetShareInfo502 convert(ShareInfo502 shareInfo502) {
            return ServerService.this.parseShareInfo502(shareInfo502);
        }
    }

    public class GetSharesRequest503 extends GetSharesRequest<ShareInfo503, NetShareInfo503> {
        public GetSharesRequest503(long j10) {
            super(j10);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetrShareEnumRequest<? extends ShareEnumStruct<? extends ShareInfoContainer<ShareInfo503>>> createRequest(long j10, Long l) {
            return new NetrShareEnumRequest.NetShareEnumRequest503(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public String getName() {
            return "NetrShareEnum[503]";
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.ServerService.GetSharesRequest
        public NetShareInfo503 convert(ShareInfo503 shareInfo503) {
            return ServerService.this.parseShareInfo503(shareInfo503);
        }
    }

    public ServerService(RPCTransport rPCTransport) {
        super(rPCTransport);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetShareInfo0 parseShareInfo0(ShareInfo0 shareInfo0) {
        if (shareInfo0 == null) {
            return null;
        }
        return new NetShareInfo0(parseWChar(shareInfo0.getNetName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetShareInfo1 parseShareInfo1(ShareInfo1 shareInfo1) {
        if (shareInfo1 == null) {
            return null;
        }
        return new NetShareInfo1(parseWChar(shareInfo1.getNetName()), shareInfo1.getType(), parseWChar(shareInfo1.getRemark()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetShareInfo2 parseShareInfo2(ShareInfo2 shareInfo2) {
        if (shareInfo2 == null) {
            return null;
        }
        return new NetShareInfo2(parseWChar(shareInfo2.getNetName()), shareInfo2.getType(), parseWChar(shareInfo2.getRemark()), shareInfo2.getPermissions(), shareInfo2.getMaxUses(), shareInfo2.getCurrentUses(), parseWChar(shareInfo2.getPath()), parseWChar(shareInfo2.getPasswd()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetShareInfo501 parseShareInfo501(ShareInfo501 shareInfo501) {
        if (shareInfo501 == null) {
            return null;
        }
        return new NetShareInfo501(parseWChar(shareInfo501.getNetName()), shareInfo501.getType(), parseWChar(shareInfo501.getRemark()), shareInfo501.getFlags());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetShareInfo502 parseShareInfo502(ShareInfo502 shareInfo502) {
        if (shareInfo502 == null) {
            return null;
        }
        return new NetShareInfo502(parseWChar(shareInfo502.getNetName()), shareInfo502.getType(), parseWChar(shareInfo502.getRemark()), shareInfo502.getPermissions(), shareInfo502.getMaxUses(), shareInfo502.getCurrentUses(), parseWChar(shareInfo502.getPath()), parseWChar(shareInfo502.getPasswd()), shareInfo502.getSecurityDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetShareInfo503 parseShareInfo503(ShareInfo503 shareInfo503) {
        if (shareInfo503 == null) {
            return null;
        }
        return new NetShareInfo503(parseWChar(shareInfo503.getNetName()), shareInfo503.getType(), parseWChar(shareInfo503.getRemark()), shareInfo503.getPermissions(), shareInfo503.getMaxUses(), shareInfo503.getCurrentUses(), parseWChar(shareInfo503.getPath()), parseWChar(shareInfo503.getPasswd()), parseWChar(shareInfo503.getServerName()), shareInfo503.getSecurityDescriptor());
    }

    public String getCanonicalizedName(String str, String str2, String str3, int i10, int i11, int i12) {
        return ((NetprPathCanonicalizeResponse) callExpectSuccess(new NetprPathCanonicalizeRequest(parseWCharNT(str), parseWCharNT(str2, false), i10, parseWCharNT(str3, false), i11, i12), "NetprPathCanonicalize")).getOutBuf();
    }

    public NetShareInfo0 getShare0(String str) {
        return parseShareInfo0((ShareInfo0) ((NetrShareGetInfoResponse) callExpectSuccess(new NetrShareGetInfoRequest.NetrShareGetInfoRequest0(WChar.NullTerminated.of(str)), "NetrShareGetInfo[0]")).getShareInfo());
    }

    public NetShareInfo1 getShare1(String str) {
        return parseShareInfo1((ShareInfo1) ((NetrShareGetInfoResponse) callExpectSuccess(new NetrShareGetInfoRequest.NetrShareGetInfoRequest1(WChar.NullTerminated.of(str)), "NetrShareGetInfo[1]")).getShareInfo());
    }

    public NetShareInfo2 getShare2(String str) {
        return parseShareInfo2((ShareInfo2) ((NetrShareGetInfoResponse) callExpectSuccess(new NetrShareGetInfoRequest.NetrShareGetInfoRequest2(WChar.NullTerminated.of(str)), "NetrShareGetInfo[2]")).getShareInfo());
    }

    public NetShareInfo501 getShare501(String str) {
        return parseShareInfo501((ShareInfo501) ((NetrShareGetInfoResponse) callExpectSuccess(new NetrShareGetInfoRequest.NetrShareGetInfoRequest501(WChar.NullTerminated.of(str)), "NetrShareGetInfo[501]")).getShareInfo());
    }

    public NetShareInfo502 getShare502(String str) {
        return parseShareInfo502((ShareInfo502) ((NetrShareGetInfoResponse) callExpectSuccess(new NetrShareGetInfoRequest.NetrShareGetInfoRequest502(WChar.NullTerminated.of(str)), "NetrShareGetInfo[502]")).getShareInfo());
    }

    public NetShareInfo503 getShare503(String str) {
        return parseShareInfo503((ShareInfo503) ((NetrShareGetInfoResponse) callExpectSuccess(new NetrShareGetInfoRequest.NetrShareGetInfoRequest503(WChar.NullTerminated.of(str)), "NetrShareGetInfo[503]")).getShareInfo());
    }

    public List<NetShareInfo0> getShares0() {
        return new GetSharesRequest0(1048576L).call().getShares();
    }

    public List<NetShareInfo1> getShares1() {
        return new GetSharesRequest1(1048576L).call().getShares();
    }

    public List<NetShareInfo2> getShares2() {
        return new GetSharesRequest2(1048576L).call().getShares();
    }

    public List<NetShareInfo501> getShares501() {
        return new GetSharesRequest501(1048576L).call().getShares();
    }

    public List<NetShareInfo502> getShares502() {
        return new GetSharesRequest502(1048576L).call().getShares();
    }

    public List<NetShareInfo503> getShares503() {
        return new GetSharesRequest503(1048576L).call().getShares();
    }
}
