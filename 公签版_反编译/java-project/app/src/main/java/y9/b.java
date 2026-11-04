package y9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hsae.autosdk.popup.constant.PopupConst;
import io.github.muntashirakon.adb.AdbProtocol;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class b implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public Socket f18980a;

    /* renamed from: c, reason: collision with root package name */
    public InputStream f18982c;

    /* renamed from: d, reason: collision with root package name */
    public OutputStream f18983d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18985f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18986g;

    /* renamed from: h, reason: collision with root package name */
    public c f18987h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f18988i;

    /* renamed from: k, reason: collision with root package name */
    public volatile boolean f18990k = false;
    public String l = "";

    /* renamed from: b, reason: collision with root package name */
    public int f18981b = 0;

    /* renamed from: j, reason: collision with root package name */
    public final s4.a f18989j = new s4.a(this);

    /* renamed from: e, reason: collision with root package name */
    public final fg.b f18984e = new fg.b(new s1.f(this, 18, this), 1);

    public static b A(Socket socket, c cVar) throws SocketException {
        b bVar = new b();
        bVar.f18980a = socket;
        bVar.f18987h = cVar;
        bVar.f18982c = socket.getInputStream();
        bVar.f18983d = socket.getOutputStream();
        socket.setTcpNoDelay(true);
        socket.setSendBufferSize(16384);
        socket.setReceiveBufferSize(65536);
        socket.setTrafficClass(16);
        socket.setPerformancePreferences(0, 2, 1);
        return bVar;
    }

    public final f J(String str) {
        int i10 = this.f18981b + 1;
        this.f18981b = i10;
        if (!this.f18985f) {
            throw new IllegalStateException("必须先调用Connect ()");
        }
        if (!this.f18986g) {
            synchronized (this) {
                try {
                    if (!this.f18986g) {
                        wait();
                    }
                    if (!this.f18986g) {
                        throw new IOException("连接失败");
                    }
                } finally {
                }
            }
        }
        f fVar = new f(this, i10);
        ((HashMap) this.f18989j.f14293b).put(Integer.valueOf(i10), fVar);
        OutputStream outputStream = this.f18983d;
        byte[] bArr = e.f19002a;
        byte[] bytes = str.getBytes(Charset.forName(HTTP.UTF_8));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 1);
        byteBufferAllocate.put(bytes);
        byteBufferAllocate.put((byte) 0);
        outputStream.write(e.a(AdbProtocol.A_OPEN, i10, 0, byteBufferAllocate.array()));
        this.f18983d.flush();
        synchronized (fVar) {
            fVar.wait(PopupConst.DURATION_POPUP);
        }
        try {
            Thread.sleep(888L);
        } catch (Exception unused) {
        }
        return fVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws InterruptedException, IOException {
        fg.b bVar = this.f18984e;
        if (bVar == null) {
            return;
        }
        Socket socket = this.f18980a;
        if (socket != null) {
            socket.close();
        }
        bVar.interrupt();
        try {
            bVar.join();
        } catch (InterruptedException unused) {
        }
    }

    public final void r() throws IOException {
        this.l = "";
        if (this.f18986g) {
            throw new IllegalStateException("已经连接");
        }
        this.f18983d.write(e.a(AdbProtocol.A_CNXN, 16777216, 4080, e.f19002a));
        this.f18983d.flush();
        this.f18985f = true;
        this.f18984e.start();
        synchronized (this) {
            try {
                if (!this.f18986g) {
                    wait(3333L);
                }
                if (!this.f18986g) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    while (!this.f18986g && this.l.equals("等待授权") && System.currentTimeMillis() - jCurrentTimeMillis < 60000) {
                        Thread.sleep(1000L);
                    }
                    if (!this.f18986g && this.l.equals("等待授权") && System.currentTimeMillis() - jCurrentTimeMillis >= 60000) {
                        throw new IOException("授权超时,弹窗时请允许调试");
                    }
                    if (!this.f18986g) {
                        throw new IOException("adb连接超时");
                    }
                }
            } finally {
            }
        }
    }
}
