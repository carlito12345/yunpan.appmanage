package y3;

import j$.util.Objects;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final int f18913a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18914b;

    /* renamed from: c, reason: collision with root package name */
    public final long f18915c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18916d;

    public h(int i10, int i11, long j10, long j11) {
        this.f18913a = i10;
        this.f18914b = i11;
        this.f18915c = j10;
        this.f18916d = j11;
    }

    public static h a(File file) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            h hVar = new h(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
            dataInputStream.close();
            return hVar;
        } catch (Throwable th2) {
            try {
                dataInputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public final void b(File file) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.f18913a);
            dataOutputStream.writeInt(this.f18914b);
            dataOutputStream.writeLong(this.f18915c);
            dataOutputStream.writeLong(this.f18916d);
            dataOutputStream.close();
        } catch (Throwable th2) {
            try {
                dataOutputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f18914b == hVar.f18914b && this.f18915c == hVar.f18915c && this.f18913a == hVar.f18913a && this.f18916d == hVar.f18916d;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f18914b), Long.valueOf(this.f18915c), Integer.valueOf(this.f18913a), Long.valueOf(this.f18916d));
    }
}
