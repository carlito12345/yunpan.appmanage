package oa;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class f extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final InputStream f11680a;

    /* renamed from: b, reason: collision with root package name */
    public final OutputStream f11681b;

    public f(InputStream inputStream, OutputStream outputStream) {
        super("ParcelFileDescriptor Transfer Thread");
        this.f11680a = inputStream;
        this.f11681b = outputStream;
        setDaemon(true);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws IOException {
        InputStream inputStream = this.f11680a;
        OutputStream outputStream = this.f11681b;
        byte[] bArr = new byte[8192];
        while (true) {
            try {
                int i10 = inputStream.read(bArr);
                if (i10 > 0) {
                    outputStream.write(bArr, 0, i10);
                    outputStream.flush();
                }
            } catch (IOException unused) {
            } catch (Throwable th2) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
                try {
                    outputStream.close();
                    throw th2;
                } catch (IOException unused3) {
                    throw th2;
                }
            }
            try {
                break;
            } catch (IOException unused4) {
            }
        }
        inputStream.close();
        try {
            outputStream.close();
        } catch (IOException unused5) {
        }
    }
}
