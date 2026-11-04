package l5;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class a0 implements r, f5.c {

    /* renamed from: b, reason: collision with root package name */
    public static final a0 f10562b = new a0(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10563a;

    public /* synthetic */ a0(int i10) {
        this.f10563a = i10;
    }

    public static ByteArrayInputStream a(String str) {
        if (!str.startsWith("data:image")) {
            throw new IllegalArgumentException("Not a valid image data URL.");
        }
        int iIndexOf = str.indexOf(44);
        if (iIndexOf == -1) {
            throw new IllegalArgumentException("Missing comma in data URL.");
        }
        if (str.substring(0, iIndexOf).endsWith(";base64")) {
            return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
        }
        throw new IllegalArgumentException("Not a base64 image data URL.");
    }

    public Class b() {
        switch (this.f10563a) {
            case 1:
                return ByteBuffer.class;
            case 3:
                return InputStream.class;
            case 8:
                return ParcelFileDescriptor.class;
            default:
                return InputStream.class;
        }
    }

    @Override // f5.c
    public boolean g(Object obj, File file, f5.i iVar) throws Throwable {
        try {
            a6.c.d((ByteBuffer) obj, file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // l5.r
    public q l(w wVar) {
        switch (this.f10563a) {
            case 0:
                return b0.f10567b;
            case 2:
                return new c(0, new a0(1));
            case 4:
                return new c(0, new a0(3));
            case 6:
                return new b0(1);
            case 11:
                return new z(wVar.c(Uri.class, AssetFileDescriptor.class), 0);
            case 12:
                return new z(wVar.c(Uri.class, ParcelFileDescriptor.class), 0);
            case 13:
                return new z(wVar.c(Uri.class, InputStream.class), 0);
            default:
                return new e0(wVar.c(g.class, InputStream.class));
        }
    }
}
