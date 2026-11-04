package dh;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.reflect.InvocationTargetException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes.dex */
public final class j extends e {
    public final boolean K;
    public SSLContext N;
    public Socket O;
    public final String M = "TLS";
    public final boolean P = true;
    public final boolean Q = true;
    public final X509TrustManager R = hh.b.f8205b;
    public final String L = "TLS";

    public j(boolean z) {
        this.K = z;
    }

    public final void A() throws NoSuchAlgorithmException, IOException, KeyManagementException {
        this.O = this.f3252b;
        if (this.N == null) {
            String str = this.L;
            X509TrustManager x509TrustManager = this.R;
            TrustManager[] trustManagerArr = x509TrustManager == null ? null : new TrustManager[]{x509TrustManager};
            try {
                SSLContext sSLContext = SSLContext.getInstance(str);
                sSLContext.init(null, trustManagerArr, null);
                this.N = sSLContext;
            } catch (GeneralSecurityException e7) {
                IOException iOException = new IOException("Could not initialize SSL context");
                iOException.initCause(e7);
                throw iOException;
            }
        }
        Socket socket = this.f3252b;
        SSLSocket sSLSocket = socket != null ? (SSLSocket) this.N.getSocketFactory().createSocket(socket, this.f3253c, socket.getPort(), false) : null;
        sSLSocket.setEnableSessionCreation(this.P);
        boolean z = this.Q;
        sSLSocket.setUseClientMode(z);
        if (!z) {
            sSLSocket.setNeedClientAuth(false);
            sSLSocket.setWantClientAuth(false);
        }
        sSLSocket.startHandshake();
        this.f3252b = sSLSocket;
        this.f4651q = new BufferedReader(new InputStreamReader(sSLSocket.getInputStream(), this.f4648n));
        this.r = new BufferedWriter(new OutputStreamWriter(sSLSocket.getOutputStream(), this.f4648n));
    }

    @Override // dh.e, ch.d
    public final void b() throws NoSuchAlgorithmException, IOException, KeyManagementException {
        boolean z = this.K;
        if (z) {
            this.f3252b.setSoTimeout(this.f3251a);
            A();
        }
        super.b();
        if (z) {
            return;
        }
        int iL = l("AUTH", this.M);
        if (334 != iL && 234 != iL) {
            throw new SSLException(i());
        }
        A();
    }

    @Override // dh.e, dh.c, ch.d
    public final void d() {
        super.d();
        Socket socket = this.O;
        if (socket != null) {
            socket.close();
        }
    }

    @Override // dh.c
    public final int l(String str, String str2) throws IOException {
        int iL = super.l(str, str2);
        if ("CCC".equals(str)) {
            if (200 != iL) {
                throw new SSLException(i());
            }
            this.f3252b.close();
            this.f3252b = this.O;
            this.f4651q = new BufferedReader(new InputStreamReader(this.f3252b.getInputStream(), this.f4648n));
            this.r = new BufferedWriter(new OutputStreamWriter(this.f3252b.getOutputStream(), this.f4648n));
        }
        return iL;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005e A[Catch: all -> 0x0047, TryCatch #1 {all -> 0x0047, blocks: (B:11:0x002e, B:19:0x005e, B:21:0x0064, B:25:0x006d, B:30:0x007c, B:31:0x007f, B:33:0x0085, B:16:0x0049), top: B:82:0x002c }] */
    @Override // dh.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Socket m(String str, String str2) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        int i10 = this.f4653t;
        Socket socket = null;
        if (i10 == 0 || i10 == 2) {
            boolean z = this.f3252b.getInetAddress() instanceof Inet6Address;
            int iJ = android.support.v4.media.session.b.J(this.f4654u);
            if (this.f4653t == 0) {
                ServerSocket serverSocketCreateServerSocket = ch.d.f3250i.createServerSocket(0, 1, this.f3252b.getLocalAddress());
                try {
                    if (!z) {
                        if (!com.bumptech.glide.c.L(j(this.f3252b.getLocalAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                        }
                        serverSocketCreateServerSocket.close();
                    } else if (com.bumptech.glide.c.L(g(this.f3252b.getLocalAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                        long j10 = this.A;
                        if (j10 <= 0 || w(j10)) {
                            if (com.bumptech.glide.c.M(l(str, str2))) {
                                if (iJ >= 0) {
                                    serverSocketCreateServerSocket.setSoTimeout(iJ);
                                }
                                Socket socketAccept = serverSocketCreateServerSocket.accept();
                                if (iJ >= 0) {
                                    socketAccept.setSoTimeout(iJ);
                                }
                                serverSocketCreateServerSocket.close();
                                socket = socketAccept;
                                if (this.z && !socket.getInetAddress().equals(this.f3252b.getInetAddress())) {
                                    InetAddress inetAddress = socket.getInetAddress();
                                    socket.close();
                                    throw new IOException("Host attempting data connection " + inetAddress.getHostAddress() + " is not same as server " + this.f3252b.getInetAddress().getHostAddress());
                                }
                            } else if (serverSocketCreateServerSocket != null) {
                                serverSocketCreateServerSocket.close();
                            }
                        } else if (serverSocketCreateServerSocket != null) {
                            serverSocketCreateServerSocket.close();
                        }
                    } else {
                        serverSocketCreateServerSocket.close();
                    }
                } catch (Throwable th2) {
                    if (serverSocketCreateServerSocket != null) {
                        try {
                            serverSocketCreateServerSocket.close();
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                            } catch (Exception unused) {
                            }
                        }
                    }
                    throw th2;
                }
            } else {
                ArrayList arrayList = this.f4646k;
                if (z && k(9) == 229) {
                    n((String) arrayList.get(0));
                } else if (!z && k(22) == 227) {
                    o((String) arrayList.get(0));
                }
                Socket socketCreateSocket = ch.d.f3249h.createSocket();
                if (iJ >= 0) {
                    socketCreateSocket.setSoTimeout(iJ);
                }
                socketCreateSocket.connect(new InetSocketAddress(this.f4656w, this.f4655v), this.f3256f);
                long j11 = this.A;
                if ((j11 <= 0 || w(j11)) && com.bumptech.glide.c.M(l(str, str2))) {
                    socket = socketCreateSocket;
                    if (this.z) {
                        InetAddress inetAddress2 = socket.getInetAddress();
                        socket.close();
                        throw new IOException("Host attempting data connection " + inetAddress2.getHostAddress() + " is not same as server " + this.f3252b.getInetAddress().getHostAddress());
                    }
                } else {
                    socketCreateSocket.close();
                }
            }
        }
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            boolean z4 = this.Q;
            sSLSocket.setUseClientMode(z4);
            sSLSocket.setEnableSessionCreation(this.P);
            if (!z4) {
                sSLSocket.setNeedClientAuth(false);
                sSLSocket.setWantClientAuth(false);
            }
            sSLSocket.startHandshake();
        }
        return socket;
    }
}
