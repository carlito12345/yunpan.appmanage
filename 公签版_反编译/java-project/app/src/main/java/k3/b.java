package k3;

import a9.o;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final int f10089a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10090b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10091c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10092d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10093e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10094f;

    public /* synthetic */ b(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f10089a = i10;
        this.f10090b = i11;
        this.f10091c = i12;
        this.f10092d = i13;
        this.f10093e = i14;
        this.f10094f = i15;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static b a(String str) {
        o.k(str.startsWith("Format:"));
        String[] strArrSplit = TextUtils.split(str.substring(7), ",");
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        for (int i15 = 0; i15 < strArrSplit.length; i15++) {
            String strB0 = qf.c.b0(strArrSplit[i15].trim());
            strB0.getClass();
            switch (strB0) {
                case "end":
                    i12 = i15;
                    break;
                case "text":
                    i14 = i15;
                    break;
                case "layer":
                    i10 = i15;
                    break;
                case "start":
                    i11 = i15;
                    break;
                case "style":
                    i13 = i15;
                    break;
            }
        }
        if (i11 == -1 || i12 == -1 || i14 == -1) {
            return null;
        }
        return new b(i10, i11, i12, i13, i14, strArrSplit.length);
    }
}
