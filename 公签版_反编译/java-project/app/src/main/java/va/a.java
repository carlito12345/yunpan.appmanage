package va;

import android.os.Build;
import hh.c;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes.dex */
public final class a extends SSLSocketFactory {

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f16717b;

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f16718c;

    /* renamed from: d, reason: collision with root package name */
    public static final c f16719d;

    /* renamed from: a, reason: collision with root package name */
    public final SSLSocketFactory f16720a;

    static {
        try {
            SSLSocket sSLSocket = (SSLSocket) SSLSocketFactory.getDefault().createSocket();
            if (sSLSocket != null) {
                LinkedList linkedList = new LinkedList();
                for (String str : sSLSocket.getSupportedProtocols()) {
                    if (!str.toUpperCase().contains("SSL")) {
                        linkedList.add(str);
                    }
                }
                f16717b = (String[]) linkedList.toArray(new String[linkedList.size()]);
                if (Build.VERSION.SDK_INT < 21) {
                    List listAsList = Arrays.asList("TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECHDE_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
                    List listAsList2 = Arrays.asList(sSLSocket.getSupportedCipherSuites());
                    HashSet hashSet = new HashSet(listAsList);
                    hashSet.retainAll(listAsList2);
                    hashSet.addAll(new HashSet(Arrays.asList(sSLSocket.getEnabledCipherSuites())));
                    f16718c = (String[]) hashSet.toArray(new String[hashSet.size()]);
                }
            }
            f16719d = new c(2);
        } catch (IOException e7) {
            throw new RuntimeException(e7);
        }
    }

    public a(c cVar) throws NoSuchAlgorithmException, KeyManagementException {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, cVar != null ? new X509TrustManager[]{cVar} : null, null);
            this.f16720a = sSLContext.getSocketFactory();
        } catch (GeneralSecurityException unused) {
            throw new AssertionError();
        }
    }

    public static void a(SSLSocket sSLSocket) {
        String[] strArr;
        String[] strArr2 = f16717b;
        if (strArr2 != null) {
            sSLSocket.setEnabledProtocols(strArr2);
        }
        if (Build.VERSION.SDK_INT >= 21 || (strArr = f16718c) == null) {
            return;
        }
        sSLSocket.setEnabledCipherSuites(strArr);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i10, boolean z) throws IOException {
        Socket socketCreateSocket = this.f16720a.createSocket(socket, str, i10, z);
        if (socketCreateSocket instanceof SSLSocket) {
            a((SSLSocket) socketCreateSocket);
        }
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return f16718c;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return f16718c;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i10) throws IOException {
        Socket socketCreateSocket = this.f16720a.createSocket(str, i10);
        if (socketCreateSocket instanceof SSLSocket) {
            a((SSLSocket) socketCreateSocket);
        }
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) throws IOException {
        Socket socketCreateSocket = this.f16720a.createSocket(str, i10, inetAddress, i11);
        if (socketCreateSocket instanceof SSLSocket) {
            a((SSLSocket) socketCreateSocket);
        }
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i10) throws IOException {
        Socket socketCreateSocket = this.f16720a.createSocket(inetAddress, i10);
        if (socketCreateSocket instanceof SSLSocket) {
            a((SSLSocket) socketCreateSocket);
        }
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        Socket socketCreateSocket = this.f16720a.createSocket(inetAddress, i10, inetAddress2, i11);
        if (socketCreateSocket instanceof SSLSocket) {
            a((SSLSocket) socketCreateSocket);
        }
        return socketCreateSocket;
    }
}
