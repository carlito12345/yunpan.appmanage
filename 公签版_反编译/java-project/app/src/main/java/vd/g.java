package vd;

import com.hierynomus.smbj.SMBClient;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class g extends URLStreamHandler {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f16833b = LoggerFactory.getLogger((Class<?>) g.class);

    /* renamed from: a, reason: collision with root package name */
    public vc.b f16834a;

    public g(vc.b bVar) {
        this.f16834a = bVar;
    }

    @Override // java.net.URLStreamHandler
    public final int getDefaultPort() {
        return SMBClient.DEFAULT_PORT;
    }

    @Override // java.net.URLStreamHandler
    public final URLConnection openConnection(URL url) {
        xc.b bVar;
        Logger logger = f16833b;
        if (logger.isDebugEnabled()) {
            logger.debug("Opening file " + url);
        }
        if (this.f16834a == null) {
            Logger logger2 = xc.b.f18438j;
            synchronized (xc.b.class) {
                if (xc.b.f18439k == null) {
                    try {
                        xc.b.f18438j.debug("Initializing singleton context");
                        xc.b.c();
                    } catch (vc.c e7) {
                        xc.b.f18438j.error("Failed to create singleton JCIFS context", (Throwable) e7);
                    }
                }
                bVar = xc.b.f18439k;
            }
            this.f16834a = bVar;
        }
        return new s(url, this.f16834a);
    }

    @Override // java.net.URLStreamHandler
    public final void parseURL(URL url, String str, int i10, int i11) {
        String host = url.getHost();
        if (str.equals("smb://")) {
            i11 += 2;
            str = "smb:////";
        } else if (!str.startsWith("smb://") && host != null && host.length() == 0) {
            str = "//".concat(str);
            i11 += 2;
        }
        super.parseURL(url, str, i10, i11);
        String path = url.getPath();
        String ref = url.getRef();
        if (ref != null) {
            path = path + '#' + ref;
        }
        String str2 = path;
        int port = url.getPort();
        setURL(url, "smb", url.getHost(), port == -1 ? SMBClient.DEFAULT_PORT : port, url.getAuthority(), url.getUserInfo(), str2, url.getQuery(), null);
    }
}
