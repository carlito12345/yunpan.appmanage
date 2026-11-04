package y9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import io.github.muntashirakon.adb.AdbProtocol;
import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class f implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final b f19003a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19004b;

    /* renamed from: c, reason: collision with root package name */
    public int f19005c;

    /* renamed from: e, reason: collision with root package name */
    public final g f19007e = new g();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f19006d = new AtomicBoolean(false);

    /* renamed from: f, reason: collision with root package name */
    public boolean f19008f = false;

    public f(b bVar, int i10) {
        this.f19003a = bVar;
        this.f19004b = i10;
    }

    public final void A(String str) throws IOException {
        byte[] bytes = str.getBytes(Charset.forName(HTTP.UTF_8));
        synchronized (this) {
            while (!this.f19008f && !this.f19006d.compareAndSet(true, false)) {
                try {
                    wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.f19008f) {
                throw new IOException("Stream closed");
            }
        }
        this.f19003a.f18983d.write(e.a(AdbProtocol.A_WRTE, this.f19004b, this.f19005c, bytes));
        this.f19003a.f18983d.write(e.a(AdbProtocol.A_WRTE, this.f19004b, this.f19005c, new byte[0]));
        this.f19003a.f18983d.flush();
    }

    public final void J(byte[] bArr) throws IOException {
        synchronized (this) {
            while (!this.f19008f && !this.f19006d.compareAndSet(true, false)) {
                try {
                    wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.f19008f) {
                throw new IOException("Stream closed");
            }
        }
        this.f19003a.f18983d.write(e.a(AdbProtocol.A_WRTE, this.f19004b, this.f19005c, bArr));
        this.f19003a.f18983d.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            try {
                if (this.f19008f) {
                    return;
                }
                r();
                try {
                    this.f19003a.f18983d.write(e.a(AdbProtocol.A_CLSE, this.f19004b, this.f19005c, null));
                    this.f19003a.f18983d.flush();
                } catch (Exception unused) {
                }
                try {
                    this.f19007e.f19009a = false;
                } catch (Exception unused2) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void r() {
        this.f19008f = true;
        synchronized (this) {
            notifyAll();
        }
    }
}
