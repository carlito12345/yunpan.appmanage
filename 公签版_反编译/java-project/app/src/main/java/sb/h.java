package sb;

import android.content.ClipData;
import android.icu.text.BreakIterator;
import android.os.Build;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import l5.y;
import mb.k;
import mb.o;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static char[] f14477a;

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f14478b = {'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f14479c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

    /* renamed from: d, reason: collision with root package name */
    public static final y f14480d = new y((byte) 0, 16);

    public static String a(ClipData clipData) {
        if (clipData == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < clipData.getItemCount(); i10++) {
            if (i10 > 0) {
                sb2.append('\n');
            }
            ClipData.Item itemAt = clipData.getItemAt(i10);
            if (itemAt.getText() != null) {
                sb2.append(itemAt.getText());
            } else if (itemAt.getUri() != null) {
                sb2.append(itemAt.getUri().toString());
            } else if (itemAt.getIntent() != null) {
                sb2.append(itemAt.getIntent().toUri(1));
            }
        }
        return sb2.toString();
    }

    public static int b(int i10, int i11) {
        return Math.max(0, Math.min(i11, i10));
    }

    public static final o c(mb.b bVar, mb.g gVar, boolean z) {
        ue.d.e(bVar, RequestParameters.POSITION);
        if (z) {
            bVar.f11058c--;
        }
        if (bVar.f11058c <= 0 && z) {
            int i10 = bVar.f11057b;
            if (i10 <= 0) {
                mb.b bVar2 = new mb.b(0, 0, -1);
                return new o(bVar2, bVar2);
            }
            int i11 = i10 - 1;
            mb.b bVar3 = new mb.b(i11, gVar.o(i11).f11076c, -1);
            return new o(bVar3, bVar3);
        }
        if (gVar.o(bVar.f11057b).f11076c == bVar.f11058c && bVar.f11057b < gVar.f11064a.size() - 1 && !z) {
            mb.b bVar4 = new mb.b(bVar.f11057b + 1, 0, -1);
            return new o(bVar4, bVar4);
        }
        mb.h hVarO = gVar.o(bVar.f11057b);
        ue.d.d(hVarO, "getLine(...)");
        int i12 = bVar.f11058c;
        while (true) {
            if ((z && i12 < 0) || (!z && i12 == hVarO.f11076c)) {
                break;
            }
            char cCharAt = hVarO.charAt(i12);
            if ((!Character.isWhitespace(cCharAt) && !Character.isSpaceChar(cCharAt)) || (i12 == 0 && z)) {
                break;
            }
            i12 += z ? -1 : 1;
        }
        return d(gVar, bVar.f11057b, i12, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final o d(mb.g gVar, int i10, int i11, boolean z) {
        long jE;
        int i12;
        int i13;
        int i14;
        ue.d.e(gVar, "text");
        mb.h hVarO = gVar.o(i10);
        if (Build.VERSION.SDK_INT < 24 || !z) {
            jE = k.e(i11, hVarO);
        } else {
            BreakIterator wordInstance = BreakIterator.getWordInstance();
            wordInstance.setText(new mb.c(hVarO));
            int iFollowing = wordInstance.following(i11);
            int iPrevious = wordInstance.previous();
            jE = (i11 < iPrevious || i11 > iFollowing) ? k.e(i11, hVarO) : g(iPrevious, iFollowing);
        }
        int i15 = (int) (jE >> 32);
        int i16 = (int) (jE & 4294967295L);
        if (i15 != i16) {
            i12 = i10;
            i13 = i16;
            i14 = i15;
        } else {
            if (i16 < hVarO.f11076c) {
                i13 = i16 + 1;
                i12 = i10;
            } else {
                if (i15 > 0) {
                    i14 = i15 - 1;
                    i12 = i10;
                } else if (i10 > 0) {
                    int i17 = i10 - 1;
                    i14 = gVar.o(i17).f11076c;
                    i12 = i10;
                    i10 = i17;
                } else if (i10 < gVar.f11064a.size() - 1) {
                    i13 = 0;
                    i12 = i10 + 1;
                }
                i13 = i16;
            }
            i14 = i15;
        }
        return new o(new mb.b(i10, i14, i15), new mb.b(i12, i13, i16));
    }

    public static char[] e(int i10) {
        char[] cArr;
        synchronized (h.class) {
            cArr = f14477a;
            f14477a = null;
        }
        return (cArr == null || cArr.length < i10) ? new char[i10] : cArr;
    }

    public static float[] f(int i10) {
        float[] fArr;
        y yVar = f14480d;
        synchronized (yVar) {
            fArr = (float[]) yVar.f10629b;
            yVar.f10629b = null;
        }
        return (fArr == null || fArr.length < i10) ? new float[i10] : fArr;
    }

    public static long g(int i10, int i11) {
        return (i11 & 4294967295L) | ((i10 & 4294967295L) << 32);
    }

    public static void h(char[] cArr) {
        if (cArr.length > 1000) {
            return;
        }
        synchronized (h.class) {
            f14477a = cArr;
        }
    }

    public static void i(float[] fArr) {
        y yVar = f14480d;
        if (fArr.length > 1000) {
            return;
        }
        synchronized (yVar) {
            yVar.f10629b = fArr;
        }
    }
}
