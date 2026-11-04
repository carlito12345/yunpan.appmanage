package l2;

import android.net.Uri;
import ha.jd;
import ha.l2;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import u7.y0;

/* loaded from: classes.dex */
public final class m implements r {

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f10504g = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};

    /* renamed from: h, reason: collision with root package name */
    public static final kf.d f10505h = new kf.d(new jd(13));

    /* renamed from: i, reason: collision with root package name */
    public static final kf.d f10506i = new kf.d(new jd(14));

    /* renamed from: a, reason: collision with root package name */
    public y0 f10507a;

    /* renamed from: e, reason: collision with root package name */
    public int f10511e;

    /* renamed from: f, reason: collision with root package name */
    public int f10512f;

    /* renamed from: c, reason: collision with root package name */
    public l2 f10509c = new l2(10);

    /* renamed from: b, reason: collision with root package name */
    public boolean f10508b = true;

    /* renamed from: d, reason: collision with root package name */
    public int f10510d = 3;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    @Override // l2.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized o[] a(Uri uri, Map map) {
        o[] oVarArr;
        int i10 = 14;
        synchronized (this) {
            try {
                int[] iArr = f10504g;
                ArrayList arrayList = new ArrayList(21);
                List list = (List) map.get("Content-Type");
                String str = (list == null || list.isEmpty()) ? null : (String) list.get(0);
                if (str != null) {
                    String strL = r1.e0.l(str);
                    strL.getClass();
                    switch (strL) {
                        case "audio/eac3-joc":
                        case "audio/ac3":
                        case "audio/eac3":
                            i10 = 0;
                            break;
                        case "video/mp2p":
                            i10 = 10;
                            break;
                        case "video/mp2t":
                            i10 = 11;
                            break;
                        case "video/webm":
                        case "audio/x-matroska":
                        case "application/webm":
                        case "audio/webm":
                        case "video/x-matroska":
                            i10 = 6;
                            break;
                        case "audio/amr-wb":
                        case "audio/amr":
                        case "audio/3gpp":
                            i10 = 3;
                            break;
                        case "image/avif":
                            i10 = 21;
                            break;
                        case "image/heic":
                        case "image/heif":
                            i10 = 20;
                            break;
                        case "image/webp":
                            i10 = 18;
                            break;
                        case "application/mp4":
                        case "audio/mp4":
                        case "video/mp4":
                            i10 = 8;
                            break;
                        case "video/x-msvideo":
                            i10 = 16;
                            break;
                        case "text/vtt":
                            i10 = 13;
                            break;
                        case "image/bmp":
                            i10 = 19;
                            break;
                        case "image/png":
                            i10 = 17;
                            break;
                        case "video/x-flv":
                            i10 = 5;
                            break;
                        case "audio/ac4":
                            i10 = 1;
                            break;
                        case "audio/ogg":
                            i10 = 9;
                            break;
                        case "audio/wav":
                            i10 = 12;
                            break;
                        case "audio/flac":
                            i10 = 4;
                            break;
                        case "audio/midi":
                            i10 = 15;
                            break;
                        case "audio/mpeg":
                            i10 = 7;
                            break;
                    }
                } else {
                    i10 = -1;
                }
                if (i10 != -1) {
                    b(i10, arrayList);
                }
                int iN = d.b.N(uri);
                if (iN != -1 && iN != i10) {
                    b(iN, arrayList);
                }
                for (int i11 = 0; i11 < 21; i11++) {
                    int i12 = iArr[i11];
                    if (i12 != i10 && i12 != iN) {
                        b(i12, arrayList);
                    }
                }
                oVarArr = (o[]) arrayList.toArray(new o[0]);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return oVarArr;
    }

    public final void b(int i10, ArrayList arrayList) {
        switch (i10) {
            case 0:
                arrayList.add(new g3.d(1));
                break;
            case 1:
                arrayList.add(new g3.d(2));
                break;
            case 2:
                arrayList.add(new s3.b());
                break;
            case 3:
                arrayList.add(new m2.a());
                break;
            case 4:
                o oVarY = f10505h.y(0);
                if (oVarY == null) {
                    arrayList.add(new q2.b());
                    break;
                } else {
                    arrayList.add(oVarY);
                    break;
                }
            case 5:
                arrayList.add(new r2.b());
                break;
            case 6:
                arrayList.add(new d3.f(this.f10509c, this.f10508b ? 0 : 2));
                break;
            case 7:
                arrayList.add(new e3.e());
                break;
            case 8:
                l2 l2Var = this.f10509c;
                int i11 = this.f10510d;
                int i12 = (i11 & 1) != 0 ? 64 : 0;
                if ((i11 & 2) != 0) {
                    i12 |= 128;
                }
                arrayList.add(new f3.j(l2Var, (this.f10508b ? 0 : 32) | i12));
                l2 l2Var2 = this.f10509c;
                int i13 = this.f10510d;
                int i14 = (1 & i13) == 0 ? 0 : 32;
                if ((2 & i13) != 0) {
                    i14 |= 128;
                }
                arrayList.add(new f3.n(l2Var2, i14 | (this.f10508b ? 0 : 16)));
                break;
            case 9:
                arrayList.add(new g3.d(0));
                break;
            case 10:
                arrayList.add(new s3.x());
                break;
            case 11:
                if (this.f10507a == null) {
                    u7.e0 e0Var = u7.g0.f15471b;
                    this.f10507a = y0.f15549e;
                }
                arrayList.add(new s3.b0(!this.f10508b ? 1 : 0, this.f10509c, new u1.d0(0L), new l5.y(15, this.f10507a)));
                break;
            case 12:
                arrayList.add(new t3.d());
                break;
            case 14:
                arrayList.add(new h3.a(this.f10511e));
                break;
            case 15:
                o oVarY2 = f10506i.y(new Object[0]);
                if (oVarY2 != null) {
                    arrayList.add(oVarY2);
                    break;
                }
                break;
            case 16:
                arrayList.add(new n2.b(!this.f10508b ? 1 : 0, this.f10509c));
                break;
            case 17:
                arrayList.add(new h3.a((byte) 0, 0));
                break;
            case 18:
                arrayList.add(new o2.a(1));
                break;
            case 19:
                arrayList.add(new h3.a((byte) 0, 1));
                break;
            case 20:
                arrayList.add(new s2.b(this.f10512f));
                break;
            case 21:
                arrayList.add(new o2.a(0));
                break;
        }
    }
}
