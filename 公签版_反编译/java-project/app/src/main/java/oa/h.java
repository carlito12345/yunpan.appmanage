package oa;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class h extends Binder implements b {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f11686i = 0;

    /* renamed from: e, reason: collision with root package name */
    public final Process f11687e;

    /* renamed from: f, reason: collision with root package name */
    public ParcelFileDescriptor f11688f;

    /* renamed from: g, reason: collision with root package name */
    public ParcelFileDescriptor f11689g;

    /* renamed from: h, reason: collision with root package name */
    public ParcelFileDescriptor f11690h;

    public h(Process process) {
        attachInterface(this, "com.yunpan.appmanage.magica.IRemoteProcess");
        this.f11687e = process;
    }

    @Override // oa.b
    public final ParcelFileDescriptor a() throws IOException {
        if (this.f11690h == null) {
            try {
                InputStream errorStream = this.f11687e.getErrorStream();
                ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
                new f(errorStream, new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptorArrCreatePipe[1])).start();
                this.f11690h = parcelFileDescriptor;
            } catch (IOException unused) {
                return null;
            }
        }
        return this.f11690h;
    }

    @Override // oa.b
    public final boolean b() {
        try {
            this.f11687e.exitValue();
            return false;
        } catch (IllegalThreadStateException unused) {
            return true;
        }
    }

    @Override // oa.b
    public final int d() {
        try {
            return this.f11687e.waitFor();
        } catch (InterruptedException unused) {
            return -1;
        }
    }

    @Override // oa.b
    public final void destroy() {
        this.f11687e.destroy();
    }

    @Override // oa.b
    public final int g() {
        try {
            return this.f11687e.exitValue();
        } catch (IllegalThreadStateException unused) {
            return -1;
        }
    }

    @Override // oa.b
    public final ParcelFileDescriptor getInputStream() throws IOException {
        if (this.f11688f == null) {
            try {
                InputStream inputStream = this.f11687e.getInputStream();
                ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
                new f(inputStream, new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptorArrCreatePipe[1])).start();
                this.f11688f = parcelFileDescriptor;
            } catch (IOException unused) {
                return null;
            }
        }
        return this.f11688f;
    }

    @Override // oa.b
    public final ParcelFileDescriptor getOutputStream() throws IOException {
        if (this.f11689g == null) {
            try {
                OutputStream outputStream = this.f11687e.getOutputStream();
                ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
                ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptorArrCreatePipe[1];
                new f(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), outputStream).start();
                this.f11689g = parcelFileDescriptor2;
            } catch (IOException unused) {
                return null;
            }
        }
        return this.f11689g;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws IOException {
        if (i10 >= 1 && i10 <= 16777215) {
            parcel.enforceInterface("com.yunpan.appmanage.magica.IRemoteProcess");
        }
        if (i10 == 1598968902) {
            parcel2.writeString("com.yunpan.appmanage.magica.IRemoteProcess");
            return true;
        }
        switch (i10) {
            case 1:
                ParcelFileDescriptor outputStream = getOutputStream();
                parcel2.writeNoException();
                if (outputStream != null) {
                    parcel2.writeInt(1);
                    outputStream.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            case 2:
                ParcelFileDescriptor inputStream = getInputStream();
                parcel2.writeNoException();
                if (inputStream != null) {
                    parcel2.writeInt(1);
                    inputStream.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            case 3:
                ParcelFileDescriptor parcelFileDescriptorA = a();
                parcel2.writeNoException();
                if (parcelFileDescriptorA != null) {
                    parcel2.writeInt(1);
                    parcelFileDescriptorA.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            case 4:
                int iD = d();
                parcel2.writeNoException();
                parcel2.writeInt(iD);
                return true;
            case 5:
                int iG = g();
                parcel2.writeNoException();
                parcel2.writeInt(iG);
                return true;
            case 6:
                destroy();
                parcel2.writeNoException();
                return true;
            case 7:
                boolean zB = b();
                parcel2.writeNoException();
                parcel2.writeInt(zB ? 1 : 0);
                return true;
            default:
                return super.onTransact(i10, parcel, parcel2, i11);
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
