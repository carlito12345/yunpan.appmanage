package g5;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.i;
import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.data.j;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import l5.a0;

/* loaded from: classes.dex */
public final class b implements e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6047a;

    /* renamed from: b, reason: collision with root package name */
    public final Comparable f6048b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6049c;

    /* renamed from: d, reason: collision with root package name */
    public Object f6050d;

    public /* synthetic */ b(int i10, Comparable comparable, Object obj) {
        this.f6047a = i10;
        this.f6048b = comparable;
        this.f6049c = obj;
    }

    public static b e(Context context, Uri uri, c cVar) {
        return new b(0, uri, new d(com.bumptech.glide.b.b(context).f3282c.b().f(), cVar, com.bumptech.glide.b.b(context).f3283d, context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.f6047a) {
            case 0:
                return InputStream.class;
            case 1:
                ((a0) this.f6049c).getClass();
                return InputStream.class;
            default:
                return ((a0) this.f6049c).b();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() throws IOException {
        switch (this.f6047a) {
            case 0:
                InputStream inputStream = (InputStream) this.f6050d;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        break;
                    } catch (IOException unused) {
                        return;
                    }
                }
                break;
            case 1:
                try {
                    ((ByteArrayInputStream) this.f6050d).close();
                    break;
                } catch (IOException unused2) {
                    return;
                }
            default:
                Object obj = this.f6050d;
                if (obj != null) {
                    try {
                        switch (((a0) this.f6049c).f10563a) {
                            case 8:
                                ((ParcelFileDescriptor) obj).close();
                                break;
                            default:
                                ((InputStream) obj).close();
                                break;
                        }
                        break;
                    } catch (IOException unused3) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final f5.a c() {
        switch (this.f6047a) {
        }
        return f5.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i10 = this.f6047a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void d(i iVar, com.bumptech.glide.load.data.d dVar) throws Throwable {
        Object objOpen;
        switch (this.f6047a) {
            case 0:
                try {
                    InputStream inputStreamI = i();
                    this.f6050d = inputStreamI;
                    dVar.B(inputStreamI);
                    break;
                } catch (FileNotFoundException e7) {
                    dVar.i(e7);
                    return;
                }
            case 1:
                try {
                    ByteArrayInputStream byteArrayInputStreamA = a0.a((String) this.f6048b);
                    this.f6050d = byteArrayInputStreamA;
                    dVar.B(byteArrayInputStreamA);
                    break;
                } catch (IllegalArgumentException e10) {
                    dVar.i(e10);
                    return;
                }
            default:
                try {
                    a0 a0Var = (a0) this.f6049c;
                    File file = (File) this.f6048b;
                    switch (a0Var.f10563a) {
                        case 8:
                            objOpen = ParcelFileDescriptor.open(file, 268435456);
                            break;
                        default:
                            objOpen = new FileInputStream(file);
                            break;
                    }
                    this.f6050d = objOpen;
                    dVar.B(objOpen);
                    break;
                } catch (FileNotFoundException e11) {
                    dVar.i(e11);
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0029 A[PHI: r5
  0x0029: PHI (r5v11 android.database.Cursor) = (r5v2 android.database.Cursor), (r5v13 android.database.Cursor) binds: [B:21:0x003d, B:11:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public InputStream i() throws Throwable {
        Cursor cursorA;
        String string;
        boolean zIsEmpty;
        InputStream inputStreamOpenInputStream;
        int iL;
        Uri uri = (Uri) this.f6048b;
        d dVar = (d) this.f6049c;
        Cursor cursor = null;
        inputStreamOpenInputStream = null;
        inputStreamOpenInputStream = null;
        InputStream inputStreamOpenInputStream2 = null;
        try {
            cursorA = dVar.f6051a.a(uri);
        } catch (SecurityException unused) {
            cursorA = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
            }
            throw th;
        }
        try {
            if (cursorA != null) {
                try {
                    try {
                    } catch (SecurityException unused2) {
                        if (Log.isLoggable("ThumbStreamOpener", 3) && uri != null) {
                            uri.toString();
                        }
                        if (cursorA != null) {
                        }
                        string = null;
                        zIsEmpty = TextUtils.isEmpty(string);
                        ContentResolver contentResolver = dVar.f6053c;
                        if (zIsEmpty) {
                        }
                        if (inputStreamOpenInputStream != null) {
                        }
                        if (iL != -1) {
                        }
                    }
                    if (cursorA.moveToFirst()) {
                        string = cursorA.getString(0);
                        cursorA.close();
                        zIsEmpty = TextUtils.isEmpty(string);
                        ContentResolver contentResolver2 = dVar.f6053c;
                        if (zIsEmpty) {
                            inputStreamOpenInputStream = null;
                        } else {
                            File file = new File(string);
                            if (file.exists() && 0 < file.length()) {
                                Uri uriFromFile = Uri.fromFile(file);
                                try {
                                    inputStreamOpenInputStream = contentResolver2.openInputStream(uriFromFile);
                                } catch (NullPointerException e7) {
                                    throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + uriFromFile).initCause(e7));
                                }
                            }
                        }
                        if (inputStreamOpenInputStream != null) {
                            try {
                                inputStreamOpenInputStream2 = contentResolver2.openInputStream(uri);
                                iL = android.support.v4.media.session.b.l(dVar.f6054d, inputStreamOpenInputStream2, dVar.f6052b);
                                if (inputStreamOpenInputStream2 != null) {
                                    try {
                                        inputStreamOpenInputStream2.close();
                                    } catch (IOException unused3) {
                                    }
                                }
                            } catch (IOException | NullPointerException unused4) {
                                if (Log.isLoggable("ThumbStreamOpener", 3) && uri != null) {
                                    uri.toString();
                                }
                                if (inputStreamOpenInputStream2 != null) {
                                    try {
                                        inputStreamOpenInputStream2.close();
                                    } catch (IOException unused5) {
                                    }
                                }
                            }
                        } else {
                            iL = -1;
                        }
                        return iL != -1 ? new j(inputStreamOpenInputStream, iL) : inputStreamOpenInputStream;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursor = cursorA;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (inputStreamOpenInputStream != null) {
            }
            if (iL != -1) {
            }
        } catch (Throwable th4) {
            if (inputStreamOpenInputStream2 != null) {
                try {
                    inputStreamOpenInputStream2.close();
                } catch (IOException unused6) {
                }
            }
            throw th4;
        }
        if (cursorA != null) {
            cursorA.close();
        }
        string = null;
        zIsEmpty = TextUtils.isEmpty(string);
        ContentResolver contentResolver22 = dVar.f6053c;
        if (zIsEmpty) {
        }
    }

    private final void f() {
    }

    private final void g() {
    }

    private final void h() {
    }
}
