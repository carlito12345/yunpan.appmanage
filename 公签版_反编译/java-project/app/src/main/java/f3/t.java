package f3;

import l2.i0;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5571a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5572b;

    /* renamed from: c, reason: collision with root package name */
    public final i0 f5573c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5574d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f5575e;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0020 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public t(boolean z, String str, int i10, byte[] bArr, int i11, int i12, byte[] bArr2) {
        int i13 = 2;
        char c7 = 0;
        a9.o.k((i10 == 0) ^ (bArr2 == null));
        this.f5571a = z;
        this.f5572b = str;
        this.f5574d = i10;
        this.f5575e = bArr2;
        if (str != null) {
            switch (str.hashCode()) {
                case 3046605:
                    if (!str.equals("cbc1")) {
                        c7 = 65535;
                        break;
                    }
                    break;
                case 3046671:
                    if (str.equals("cbcs")) {
                        c7 = 1;
                        break;
                    }
                    break;
                case 3049879:
                    if (str.equals("cenc")) {
                        c7 = 2;
                        break;
                    }
                    break;
                case 3049895:
                    if (str.equals("cens")) {
                        c7 = 3;
                        break;
                    }
                    break;
            }
            switch (c7) {
                case 0:
                case 1:
                    break;
                default:
                    u1.a.p("Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                case 2:
                case 3:
                    break;
            }
        } else {
            i13 = 1;
        }
        this.f5573c = new i0(i13, bArr, i11, i12);
    }
}
