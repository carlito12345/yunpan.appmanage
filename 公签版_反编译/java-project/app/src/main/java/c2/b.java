package c2;

import a2.g1;
import android.content.ContextWrapper;
import android.os.Build;
import ba.i;
import d2.m;
import d2.n;
import r1.e0;
import r1.p;
import ta.q;
import u1.f0;

/* loaded from: classes.dex */
public final class b implements m {

    /* renamed from: a, reason: collision with root package name */
    public final ContextWrapper f2856a;

    public b(ContextWrapper contextWrapper, int i10) {
        switch (i10) {
            case 1:
                this.f2856a = contextWrapper;
                break;
            default:
                contextWrapper.getClass();
                this.f2856a = contextWrapper;
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0073, code lost:
    
        if (android.os.Build.VERSION.SDK_INT >= 26) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007a, code lost:
    
        if (android.os.Build.VERSION.SDK_INT >= 34) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(p pVar) {
        String str = pVar.f13523o;
        if (str == null || !e0.i(str)) {
            return q.a(0, 0, 0, 0);
        }
        String str2 = f0.f15206a;
        String str3 = pVar.f13523o;
        str3.getClass();
        switch (str3) {
            case "image/avif":
                break;
            case "image/heic":
            case "image/heif":
                break;
            case "image/jpeg":
            case "image/webp":
            case "image/bmp":
            case "image/png":
                break;
            default:
                return q.a(1, 0, 0, 0);
        }
        return q.a(4, 0, 0, 0);
    }

    @Override // d2.m
    public n s(i iVar) {
        ContextWrapper contextWrapper;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 31 && ((contextWrapper = this.f2856a) == null || i10 < 28 || !contextWrapper.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen"))) {
            return new m7.e(19).s(iVar);
        }
        int iG = e0.g(((p) iVar.f2700c).f13523o);
        u1.a.j("Creating an asynchronous MediaCodec adapter for track type " + f0.x(iG));
        return new g1(new d2.e(iG, 0), 12, new d2.e(iG, 1)).s(iVar);
    }
}
