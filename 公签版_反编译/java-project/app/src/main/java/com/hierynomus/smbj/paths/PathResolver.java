package com.hierynomus.smbj.paths;

import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.smbj.common.SmbPath;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.StatusHandler;

/* loaded from: classes.dex */
public interface PathResolver {
    public static final PathResolver LOCAL = new PathResolver() { // from class: com.hierynomus.smbj.paths.PathResolver.1
        @Override // com.hierynomus.smbj.paths.PathResolver
        public <T> T resolve(Session session, SMB2Packet sMB2Packet, SmbPath smbPath, ResolveAction<T> resolveAction) {
            return resolveAction.apply(smbPath);
        }

        @Override // com.hierynomus.smbj.paths.PathResolver
        public StatusHandler statusHandler() {
            return StatusHandler.SUCCESS;
        }

        @Override // com.hierynomus.smbj.paths.PathResolver
        public <T> T resolve(Session session, SmbPath smbPath, ResolveAction<T> resolveAction) {
            return resolveAction.apply(smbPath);
        }
    };

    public interface ResolveAction<T> {
        T apply(SmbPath smbPath);
    }

    <T> T resolve(Session session, SMB2Packet sMB2Packet, SmbPath smbPath, ResolveAction<T> resolveAction);

    <T> T resolve(Session session, SmbPath smbPath, ResolveAction<T> resolveAction);

    StatusHandler statusHandler();
}
