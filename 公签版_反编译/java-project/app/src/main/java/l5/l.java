package l5;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class l implements com.bumptech.glide.load.data.e {

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f10596d = {"_data"};

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10597a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10598b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10599c;

    public /* synthetic */ l(Object obj, int i10, Object obj2) {
        this.f10597a = i10;
        this.f10598b = obj;
        this.f10599c = obj2;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.f10597a) {
            case 0:
                return File.class;
            default:
                return ((a0) this.f10599c).b();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        int i10 = this.f10597a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final f5.a c() {
        switch (this.f10597a) {
        }
        return f5.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i10 = this.f10597a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void d(com.bumptech.glide.i iVar, com.bumptech.glide.load.data.d dVar) {
        Object objWrap;
        switch (this.f10597a) {
            case 0:
                Cursor cursorQuery = ((Context) this.f10598b).getContentResolver().query((Uri) this.f10599c, f10596d, null, null, null);
                if (cursorQuery != null) {
                    try {
                        string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                    } finally {
                        cursorQuery.close();
                    }
                }
                if (!TextUtils.isEmpty(string)) {
                    dVar.B(new File(string));
                    return;
                }
                dVar.i(new FileNotFoundException("Failed to find file path for: " + ((Uri) this.f10599c)));
                return;
            default:
                a0 a0Var = (a0) this.f10599c;
                byte[] bArr = (byte[]) this.f10598b;
                switch (a0Var.f10563a) {
                    case 1:
                        objWrap = ByteBuffer.wrap(bArr);
                        break;
                    default:
                        objWrap = new ByteArrayInputStream(bArr);
                        break;
                }
                dVar.B(objWrap);
                return;
        }
    }

    private final void e() {
    }

    private final void f() {
    }

    private final void g() {
    }

    private final void h() {
    }
}
