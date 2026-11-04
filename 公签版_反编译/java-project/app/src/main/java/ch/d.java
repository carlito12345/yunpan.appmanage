package ch;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.EventListener;
import java.util.Iterator;
import javax.net.ServerSocketFactory;
import javax.net.SocketFactory;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: h, reason: collision with root package name */
    public static final SocketFactory f3249h = SocketFactory.getDefault();

    /* renamed from: i, reason: collision with root package name */
    public static final ServerSocketFactory f3250i = ServerSocketFactory.getDefault();

    /* renamed from: f, reason: collision with root package name */
    public int f3256f = 60000;

    /* renamed from: g, reason: collision with root package name */
    public final Charset f3257g = Charset.defaultCharset();

    /* renamed from: b, reason: collision with root package name */
    public Socket f3252b = null;

    /* renamed from: c, reason: collision with root package name */
    public String f3253c = null;

    /* renamed from: d, reason: collision with root package name */
    public InputStream f3254d = null;

    /* renamed from: e, reason: collision with root package name */
    public OutputStream f3255e = null;

    /* renamed from: a, reason: collision with root package name */
    public int f3251a = 0;

    public abstract void b();

    public final void c(String str, int i10) {
        this.f3253c = str;
        InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i10);
        Socket socketCreateSocket = f3249h.createSocket();
        this.f3252b = socketCreateSocket;
        socketCreateSocket.connect(inetSocketAddress, this.f3256f);
        b();
    }

    public void d() throws IOException {
        Socket socket = this.f3252b;
        if (socket != null) {
            try {
                socket.close();
            } catch (IOException unused) {
            }
        }
        InputStream inputStream = this.f3254d;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
        }
        OutputStream outputStream = this.f3255e;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException unused3) {
            }
        }
        this.f3252b = null;
        this.f3253c = null;
        this.f3254d = null;
        this.f3255e = null;
    }

    public final void e(int i10) {
        dh.c cVar = (dh.c) this;
        if (cVar.f4649o.f3248b.f8203a.size() > 0) {
            c cVar2 = cVar.f4649o;
            cVar2.getClass();
            new b(cVar2.f3247a);
            Iterator it = cVar2.f3248b.f8203a.iterator();
            if (it.hasNext()) {
                ((EventListener) it.next()).getClass();
                throw new ClassCastException();
            }
        }
    }

    public final boolean f() {
        Socket socket = this.f3252b;
        if (socket == null) {
            return false;
        }
        return socket.isConnected();
    }
}
