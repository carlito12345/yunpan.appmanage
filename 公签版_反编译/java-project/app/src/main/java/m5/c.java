package m5;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.bumptech.glide.load.data.e;
import f5.i;
import java.io.File;
import java.io.FileNotFoundException;
import l5.p;
import l5.q;

/* loaded from: classes.dex */
public final class c implements e {

    /* renamed from: k, reason: collision with root package name */
    public static final String[] f10879k = {"_data"};

    /* renamed from: a, reason: collision with root package name */
    public final Context f10880a;

    /* renamed from: b, reason: collision with root package name */
    public final q f10881b;

    /* renamed from: c, reason: collision with root package name */
    public final q f10882c;

    /* renamed from: d, reason: collision with root package name */
    public final Uri f10883d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10884e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10885f;

    /* renamed from: g, reason: collision with root package name */
    public final i f10886g;

    /* renamed from: h, reason: collision with root package name */
    public final Class f10887h;

    /* renamed from: i, reason: collision with root package name */
    public volatile boolean f10888i;

    /* renamed from: j, reason: collision with root package name */
    public volatile e f10889j;

    public c(Context context, q qVar, q qVar2, Uri uri, int i10, int i11, i iVar, Class cls) {
        this.f10880a = context.getApplicationContext();
        this.f10881b = qVar;
        this.f10882c = qVar2;
        this.f10883d = uri;
        this.f10884e = i10;
        this.f10885f = i11;
        this.f10886g = iVar;
        this.f10887h = cls;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return this.f10887h;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        e eVar = this.f10889j;
        if (eVar != null) {
            eVar.b();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final f5.a c() {
        return f5.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f10888i = true;
        e eVar = this.f10889j;
        if (eVar != null) {
            eVar.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void d(com.bumptech.glide.i iVar, com.bumptech.glide.load.data.d dVar) throws Throwable {
        try {
            e eVarE = e();
            if (eVarE == null) {
                dVar.i(new IllegalArgumentException("Failed to build fetcher for: " + this.f10883d));
            } else {
                this.f10889j = eVarE;
                if (this.f10888i) {
                    cancel();
                } else {
                    eVarE.d(iVar, dVar);
                }
            }
        } catch (FileNotFoundException e7) {
            dVar.i(e7);
        }
    }

    public final e e() throws Throwable {
        p pVarB;
        boolean zIsExternalStorageLegacy = Environment.isExternalStorageLegacy();
        Cursor cursor = null;
        Context context = this.f10880a;
        i iVar = this.f10886g;
        int i10 = this.f10885f;
        int i11 = this.f10884e;
        if (zIsExternalStorageLegacy) {
            Uri uri = this.f10883d;
            try {
                Cursor cursorQuery = context.getContentResolver().query(uri, f10879k, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                            if (TextUtils.isEmpty(string)) {
                                throw new FileNotFoundException("File path was empty in media store for: " + uri);
                            }
                            File file = new File(string);
                            cursorQuery.close();
                            pVarB = this.f10881b.b(file, i11, i10, iVar);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            Uri requireOriginal = this.f10883d;
            boolean zE0 = p000if.a.e0(requireOriginal);
            q qVar = this.f10882c;
            if (zE0 && requireOriginal.getPathSegments().contains("picker")) {
                pVarB = qVar.b(requireOriginal, i11, i10, iVar);
            } else {
                if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                    requireOriginal = MediaStore.setRequireOriginal(requireOriginal);
                }
                pVarB = qVar.b(requireOriginal, i11, i10, iVar);
            }
        }
        if (pVarB != null) {
            return pVarB.f10606c;
        }
        return null;
    }
}
