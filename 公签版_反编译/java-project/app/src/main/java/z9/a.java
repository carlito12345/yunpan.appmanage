package z9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import io.github.muntashirakon.adb.AdbProtocol;
import java.io.Closeable;
import java.io.IOException;
import java.net.ConnectException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import ua.i8;

/* loaded from: classes.dex */
public final class a implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public e f19488a;

    /* renamed from: d, reason: collision with root package name */
    public boolean f19491d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f19492e;

    /* renamed from: f, reason: collision with root package name */
    public int f19493f;

    /* renamed from: g, reason: collision with root package name */
    public b f19494g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f19495h;

    /* renamed from: i, reason: collision with root package name */
    public final HashMap f19496i = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public int f19489b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Thread f19490c = new Thread(new y7.b(25, this, this, false));

    public final int A() {
        if (!this.f19491d) {
            throw new IllegalStateException("connect() must be called first");
        }
        synchronized (this) {
            try {
                if (!this.f19492e) {
                    wait();
                }
                if (!this.f19492e) {
                    throw new IOException("Connection failed");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f19493f;
    }

    public final d J(String str) {
        int i10 = this.f19489b + 1;
        this.f19489b = i10;
        if (!this.f19491d) {
            throw new IllegalStateException("connect() must be called first");
        }
        synchronized (this) {
            try {
                if (!this.f19492e) {
                    wait();
                }
                if (!this.f19492e) {
                    throw new IOException("Connection failed");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        d dVar = new d(this, i10);
        this.f19496i.put(Integer.valueOf(i10), dVar);
        e eVar = this.f19488a;
        byte[] bArr = c.f19501a;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(str.length() + 1);
        byteBufferAllocate.put(str.getBytes(HTTP.UTF_8));
        byteBufferAllocate.put((byte) 0);
        byte[] bArrArray = byteBufferAllocate.array();
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(0, AdbProtocol.A_OPEN);
        byteBufferOrder.putInt(4, i10);
        byteBufferOrder.putInt(8, 0);
        byteBufferOrder.putInt(12, bArrArray == null ? 0 : bArrArray.length);
        byteBufferOrder.putInt(16, bArrArray != null ? i8.m(bArrArray) : 0);
        byteBufferOrder.putInt(20, -1313165392);
        eVar.getClass();
        eVar.J(byteBufferOrder.array());
        if (bArrArray != null) {
            eVar.J(bArrArray);
        }
        synchronized (dVar) {
            dVar.wait();
        }
        if (dVar.f19507f) {
            throw new ConnectException("Stream open actively rejected by remote peer");
        }
        return dVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Thread thread = this.f19490c;
        if (thread == null) {
            return;
        }
        this.f19488a.close();
        thread.interrupt();
        try {
            thread.join();
        } catch (InterruptedException unused) {
        }
    }

    public final void r() {
        this.f19492e = false;
        e eVar = this.f19488a;
        byte[] bArr = c.f19501a;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(0, AdbProtocol.A_CNXN);
        byteBufferOrder.putInt(4, 16777216);
        byteBufferOrder.putInt(8, 4096);
        byteBufferOrder.putInt(12, bArr == null ? 0 : bArr.length);
        byteBufferOrder.putInt(16, bArr != null ? i8.m(bArr) : 0);
        byteBufferOrder.putInt(20, -1314410052);
        eVar.getClass();
        eVar.J(byteBufferOrder.array());
        if (bArr != null) {
            eVar.J(bArr);
        }
        this.f19491d = true;
        this.f19490c.start();
        synchronized (this) {
            try {
                if (!this.f19492e) {
                    wait();
                }
                if (!this.f19492e) {
                    throw new IOException("Connection failed");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
