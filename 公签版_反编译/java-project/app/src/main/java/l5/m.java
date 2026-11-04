package l5;

import android.content.Context;
import android.net.Uri;

/* loaded from: classes.dex */
public final class m implements q {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10600a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f10601b;

    public m(Context context, int i10) {
        this.f10600a = i10;
        switch (i10) {
            case 1:
                this.f10601b = context.getApplicationContext();
                break;
            case 2:
                this.f10601b = context.getApplicationContext();
                break;
            default:
                this.f10601b = context;
                break;
        }
    }

    @Override // l5.q
    public final boolean a(Object obj) {
        switch (this.f10600a) {
            case 0:
                return p000if.a.e0((Uri) obj);
            case 1:
                Uri uri = (Uri) obj;
                return p000if.a.e0(uri) && !uri.getPathSegments().contains("video");
            default:
                Uri uri2 = (Uri) obj;
                return p000if.a.e0(uri2) && uri2.getPathSegments().contains("video");
        }
    }

    @Override // l5.q
    public final p b(Object obj, int i10, int i11, f5.i iVar) {
        Long l;
        switch (this.f10600a) {
            case 0:
                Uri uri = (Uri) obj;
                return new p(new z5.d(uri), new l(this.f10601b, 0, uri));
            case 1:
                Uri uri2 = (Uri) obj;
                if (i10 == Integer.MIN_VALUE || i11 == Integer.MIN_VALUE || i10 > 512 || i11 > 384) {
                    return null;
                }
                z5.d dVar = new z5.d(uri2);
                Context context = this.f10601b;
                return new p(dVar, g5.b.e(context, uri2, new g5.a(context.getContentResolver(), 0)));
            default:
                Uri uri3 = (Uri) obj;
                if (i10 == Integer.MIN_VALUE || i11 == Integer.MIN_VALUE || i10 > 512 || i11 > 384 || (l = (Long) iVar.c(o5.e0.f11589d)) == null || l.longValue() != -1) {
                    return null;
                }
                z5.d dVar2 = new z5.d(uri3);
                Context context2 = this.f10601b;
                return new p(dVar2, g5.b.e(context2, uri3, new g5.a(context2.getContentResolver(), 1)));
        }
    }
}
