package com.hierynomus.smbj.paths;

import com.hierynomus.mserref.NtStatus;
import com.hierynomus.mssmb2.SMB2Error;
import com.hierynomus.mssmb2.SMB2Functions;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.smbfs.SmbPath;
import com.hierynomus.smbj.paths.PathResolver;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.StatusHandler;
import com.hierynomus.utils.Strings;
import g.b;
import java.util.List;

/* loaded from: classes.dex */
public class SymlinkPathResolver implements PathResolver {
    private StatusHandler statusHandler;
    private PathResolver wrapped;

    public SymlinkPathResolver(final PathResolver pathResolver) {
        this.wrapped = pathResolver;
        this.statusHandler = new StatusHandler() { // from class: com.hierynomus.smbj.paths.SymlinkPathResolver.1
            @Override // com.hierynomus.smbj.share.StatusHandler
            public boolean isSuccess(long j10) {
                return j10 == NtStatus.STATUS_STOPPED_ON_SYMLINK.getValue() || pathResolver.statusHandler().isSuccess(j10);
            }
        };
    }

    private static SMB2Error.SymbolicLinkError getSymlinkErrorData(SMB2Error sMB2Error) {
        if (sMB2Error == null) {
            return null;
        }
        for (SMB2Error.SMB2ErrorData sMB2ErrorData : sMB2Error.getErrorData()) {
            if (sMB2ErrorData instanceof SMB2Error.SymbolicLinkError) {
                return (SMB2Error.SymbolicLinkError) sMB2ErrorData;
            }
        }
        return null;
    }

    private String getSymlinkParsedPath(String str, int i10) {
        byte[] bArrUnicode = SMB2Functions.unicode(str);
        return new String(bArrUnicode, 0, bArrUnicode.length - i10, Charsets.UTF_16LE);
    }

    private String getSymlinkUnparsedPath(String str, int i10) {
        byte[] bArrUnicode = SMB2Functions.unicode(str);
        return new String(bArrUnicode, bArrUnicode.length - i10, i10, Charsets.UTF_16LE);
    }

    private String normalizePath(String str) {
        List<String> listSplit = Strings.split(str, SmbPath.SEPARATOR);
        int i10 = 0;
        while (i10 < listSplit.size()) {
            String str2 = listSplit.get(i10);
            if (".".equals(str2)) {
                listSplit.remove(i10);
            } else if ("..".equals(str2)) {
                if (i10 > 0) {
                    listSplit.remove(i10);
                    i10--;
                }
                listSplit.remove(i10);
            } else {
                i10++;
            }
        }
        return Strings.join(listSplit, SmbPath.SEPARATOR);
    }

    private String resolveSymlinkTarget(String str, SMB2Error.SymbolicLinkError symbolicLinkError) {
        String strL;
        int unparsedPathLength = symbolicLinkError.getUnparsedPathLength();
        String symlinkUnparsedPath = getSymlinkUnparsedPath(str, unparsedPathLength);
        String substituteName = symbolicLinkError.getSubstituteName();
        if (symbolicLinkError.isAbsolute()) {
            strL = b.j(substituteName, symlinkUnparsedPath);
        } else {
            String symlinkParsedPath = getSymlinkParsedPath(str, unparsedPathLength);
            StringBuilder sb2 = new StringBuilder();
            int iLastIndexOf = symlinkParsedPath.lastIndexOf("\\");
            if (iLastIndexOf != -1) {
                sb2.append((CharSequence) symlinkParsedPath, 0, iLastIndexOf);
                sb2.append(SmbPath.SEPARATOR);
            }
            strL = b.l(substituteName, symlinkUnparsedPath, sb2);
        }
        return normalizePath(strL);
    }

    @Override // com.hierynomus.smbj.paths.PathResolver
    public <T> T resolve(Session session, SMB2Packet sMB2Packet, com.hierynomus.smbj.common.SmbPath smbPath, PathResolver.ResolveAction<T> resolveAction) throws PathResolveException {
        if (sMB2Packet.getHeader().getStatusCode() != NtStatus.STATUS_STOPPED_ON_SYMLINK.getValue()) {
            return (T) this.wrapped.resolve(session, sMB2Packet, smbPath, resolveAction);
        }
        SMB2Error.SymbolicLinkError symlinkErrorData = getSymlinkErrorData(sMB2Packet.getError());
        if (symlinkErrorData != null) {
            return resolveAction.apply(new com.hierynomus.smbj.common.SmbPath(smbPath.getHostname(), smbPath.getShareName(), resolveSymlinkTarget(smbPath.getPath(), symlinkErrorData)));
        }
        throw new PathResolveException(sMB2Packet.getHeader().getStatusCode(), "Create failed for " + smbPath + ": missing symlink data");
    }

    @Override // com.hierynomus.smbj.paths.PathResolver
    public StatusHandler statusHandler() {
        return this.statusHandler;
    }

    @Override // com.hierynomus.smbj.paths.PathResolver
    public <T> T resolve(Session session, com.hierynomus.smbj.common.SmbPath smbPath, PathResolver.ResolveAction<T> resolveAction) {
        return (T) this.wrapped.resolve(session, smbPath, resolveAction);
    }
}
