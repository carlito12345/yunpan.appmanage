package oa;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class g extends Process {

    /* renamed from: a, reason: collision with root package name */
    public final b f11682a;

    /* renamed from: b, reason: collision with root package name */
    public ParcelFileDescriptor.AutoCloseOutputStream f11683b;

    /* renamed from: c, reason: collision with root package name */
    public ParcelFileDescriptor.AutoCloseInputStream f11684c;

    /* renamed from: d, reason: collision with root package name */
    public ParcelFileDescriptor.AutoCloseInputStream f11685d;

    public g(b bVar) {
        this.f11682a = bVar;
    }

    @Override // java.lang.Process
    public final void destroy() {
        try {
            this.f11682a.destroy();
        } catch (RemoteException unused) {
        }
    }

    @Override // java.lang.Process
    public final int exitValue() {
        try {
            if (isAlive()) {
                throw new IllegalThreadStateException();
            }
            int iG = this.f11682a.g();
            if (iG != -1) {
                return iG;
            }
            throw new IllegalThreadStateException();
        } catch (RemoteException unused) {
            return -1;
        }
    }

    @Override // java.lang.Process
    public final InputStream getErrorStream() {
        if (this.f11685d == null) {
            try {
                this.f11685d = new ParcelFileDescriptor.AutoCloseInputStream(this.f11682a.a());
            } catch (RemoteException unused) {
                return null;
            }
        }
        return this.f11685d;
    }

    @Override // java.lang.Process
    public final InputStream getInputStream() {
        if (this.f11684c == null) {
            try {
                this.f11684c = new ParcelFileDescriptor.AutoCloseInputStream(this.f11682a.getInputStream());
            } catch (RemoteException unused) {
                return null;
            }
        }
        return this.f11684c;
    }

    @Override // java.lang.Process
    public final OutputStream getOutputStream() {
        if (this.f11683b == null) {
            try {
                this.f11683b = new ParcelFileDescriptor.AutoCloseOutputStream(this.f11682a.getOutputStream());
            } catch (RemoteException unused) {
                return null;
            }
        }
        return this.f11683b;
    }

    @Override // java.lang.Process
    public final boolean isAlive() {
        try {
            return this.f11682a.b();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // java.lang.Process
    public final int waitFor() throws InterruptedException {
        try {
            int iD = this.f11682a.d();
            if (iD != -1) {
                return iD;
            }
            throw new InterruptedException();
        } catch (RemoteException unused) {
            return -1;
        }
    }
}
