package e4;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    public static final HashMap f4767d = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final File f4768a;

    /* renamed from: b, reason: collision with root package name */
    public final Lock f4769b;

    /* renamed from: c, reason: collision with root package name */
    public FileChannel f4770c;

    public a(File file, String str) {
        Lock lock;
        this.f4768a = file != null ? new File(file, str.concat(".lck")) : null;
        HashMap map = f4767d;
        synchronized (map) {
            try {
                Object reentrantLock = map.get(str);
                if (reentrantLock == null) {
                    reentrantLock = new ReentrantLock();
                    map.put(str, reentrantLock);
                }
                lock = (Lock) reentrantLock;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f4769b = lock;
    }

    public final void a(boolean z) throws IOException {
        this.f4769b.lock();
        if (z) {
            File file = this.f4768a;
            try {
                if (file == null) {
                    throw new IOException("No lock directory was provided.");
                }
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileChannel channel = new FileOutputStream(file).getChannel();
                channel.lock();
                this.f4770c = channel;
            } catch (IOException unused) {
                this.f4770c = null;
            }
        }
    }

    public final void b() throws IOException {
        try {
            FileChannel fileChannel = this.f4770c;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (IOException unused) {
        }
        this.f4769b.unlock();
    }
}
