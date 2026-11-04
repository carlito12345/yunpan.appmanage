package ce;

import com.hierynomus.smbj.SMBClient;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

/* loaded from: classes.dex */
public final class h extends URLStreamHandler {

    /* renamed from: a, reason: collision with root package name */
    public static final h f3064a = new h();

    @Override // java.net.URLStreamHandler
    public final int getDefaultPort() {
        return SMBClient.DEFAULT_PORT;
    }

    @Override // java.net.URLStreamHandler
    public final URLConnection openConnection(URL url) {
        return new t0(url);
    }

    @Override // java.net.URLStreamHandler
    public final void parseURL(URL url, String str, int i10, int i11) {
        String host = url.getHost();
        if (str.equals("smb1://")) {
            i11 += 2;
            str = "smb1:////";
        } else if (!str.startsWith("smb1://") && host != null && host.length() == 0) {
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
