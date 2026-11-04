package com.hierynomus.smbfs;

import com.hierynomus.protocol.transport.TransportException;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.auth.AuthenticationContext;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.DiskShare;
import java.io.IOException;

/* loaded from: classes.dex */
class ShareSourceImpl implements ShareSource {
    private final SMBClient client;
    private volatile boolean closed = false;
    private final AuthenticationContext context;
    private final String host;
    private final int port;
    private Session session;
    private DiskShare share;

    public ShareSourceImpl(SMBClient sMBClient, String str, int i10, AuthenticationContext authenticationContext) {
        this.client = sMBClient;
        this.host = str;
        this.port = i10;
        this.context = authenticationContext;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void closeSession() {
        Session session = this.session;
        if (session != null) {
            try {
                try {
                    Connection connection = session.getConnection();
                    try {
                        Session session2 = this.session;
                        if (session2 != null) {
                            session2.close();
                        }
                        if (connection != null) {
                            connection.close();
                        }
                    } catch (Throwable th2) {
                        if (connection != null) {
                            try {
                                connection.close();
                            } catch (Throwable th3) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                } catch (Exception unused) {
                                }
                            }
                        }
                        throw th2;
                    }
                } finally {
                    this.session = null;
                    this.share = null;
                }
            } catch (IOException unused2) {
            }
        }
    }

    private Session getSession() {
        if (this.session == null) {
            this.session = this.client.connect(this.host, this.port).authenticate(this.context);
        }
        return this.session;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.closed = true;
        try {
            closeSession();
        } finally {
            this.client.close();
        }
    }

    @Override // com.hierynomus.smbfs.ShareSource
    public synchronized DiskShare getShare(String str) {
        if (this.closed) {
            throw new IllegalStateException("Already closed");
        }
        return getShare(str, true);
    }

    private DiskShare getShare(String str, boolean z) {
        try {
            DiskShare diskShare = this.share;
            if (diskShare == null || !diskShare.isConnected()) {
                this.share = (DiskShare) getSession().connectShare(str);
            }
            return this.share;
        } catch (SMBRuntimeException e7) {
            if (z && (e7.getCause() instanceof TransportException)) {
                closeSession();
                return getShare(str, false);
            }
            throw e7;
        }
    }
}
