package q3;

import android.graphics.Rect;
import com.hsae.autosdk.core.NoConst;
import j3.f;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    public boolean f12952d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f12953e;

    /* renamed from: f, reason: collision with root package name */
    public int[] f12954f;

    /* renamed from: g, reason: collision with root package name */
    public int f12955g;

    /* renamed from: h, reason: collision with root package name */
    public int f12956h;

    /* renamed from: i, reason: collision with root package name */
    public Rect f12957i;

    /* renamed from: b, reason: collision with root package name */
    public long f12950b = -9223372036854775807L;

    /* renamed from: c, reason: collision with root package name */
    public long f12951c = -9223372036854775807L;

    /* renamed from: a, reason: collision with root package name */
    public final int[] f12949a = new int[4];

    /* renamed from: j, reason: collision with root package name */
    public int f12958j = -1;

    /* renamed from: k, reason: collision with root package name */
    public int f12959k = -1;

    public static int a(int i10, int[] iArr) {
        return (i10 < 0 || i10 >= iArr.length) ? iArr[0] : iArr[i10];
    }

    public static int c(int i10, int i11) {
        return (i10 & NoConst.I24) | ((i11 * 17) << 24);
    }

    public final void b(f fVar, boolean z, Rect rect, int[] iArr) {
        int i10;
        int i11;
        int iWidth = rect.width();
        int iHeight = rect.height();
        int i12 = !z ? 1 : 0;
        int i13 = i12 * iWidth;
        while (true) {
            int i14 = 0;
            do {
                int iG = 0;
                for (int i15 = 1; iG < i15 && i15 <= 64; i15 <<= 2) {
                    if (fVar.b() < 4) {
                        i11 = 0;
                        i10 = -1;
                        break;
                    }
                    iG = (iG << 4) | fVar.g(4);
                }
                i10 = iG & 3;
                i11 = iG < 4 ? iWidth : iG >> 2;
                int iMin = Math.min(i11, iWidth - i14);
                if (iMin > 0) {
                    int i16 = i13 + iMin;
                    Arrays.fill(iArr, i13, i16, this.f12949a[i10]);
                    i14 += iMin;
                    i13 = i16;
                }
            } while (i14 < iWidth);
            i12 += 2;
            if (i12 >= iHeight) {
                return;
            }
            i13 = i12 * iWidth;
            fVar.c();
        }
    }
}
