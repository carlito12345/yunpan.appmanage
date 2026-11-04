package l5;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.net.URL;

/* loaded from: classes.dex */
public final class z implements q {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10630a;

    /* renamed from: b, reason: collision with root package name */
    public final q f10631b;

    public /* synthetic */ z(q qVar, int i10) {
        this.f10630a = i10;
        this.f10631b = qVar;
    }

    @Override // l5.q
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        switch (this.f10630a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }

    @Override // l5.q
    public final p b(Object obj, int i10, int i11, f5.i iVar) {
        Uri uriFromFile;
        switch (this.f10630a) {
            case 0:
                String str = (String) obj;
                if (TextUtils.isEmpty(str)) {
                    uriFromFile = null;
                } else if (str.charAt(0) == '/') {
                    uriFromFile = Uri.fromFile(new File(str));
                } else {
                    Uri uri = Uri.parse(str);
                    uriFromFile = uri.getScheme() == null ? Uri.fromFile(new File(str)) : uri;
                }
                if (uriFromFile == null) {
                    return null;
                }
                q qVar = this.f10631b;
                if (qVar.a(uriFromFile)) {
                    return qVar.b(uriFromFile, i10, i11, iVar);
                }
                return null;
            default:
                return this.f10631b.b(new g((URL) obj), i10, i11, iVar);
        }
    }
}
