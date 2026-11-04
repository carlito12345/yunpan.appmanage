package uh;

/* loaded from: classes3.dex */
public final class h implements e {

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f16126f = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};

    /* renamed from: a, reason: collision with root package name */
    public final Enum f16127a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16128b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16129c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16130d;

    /* renamed from: e, reason: collision with root package name */
    public final int f16131e;

    /* JADX WARN: Multi-variable type inference failed */
    public h(wh.m mVar, int i10, int i11, int i12) {
        this.f16127a = (Enum) mVar;
        this.f16128b = i10;
        this.f16129c = i11;
        this.f16130d = i12;
        this.f16131e = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0089  */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, java.lang.Object, wh.m] */
    @Override // uh.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(androidx.room.s sVar, StringBuilder sb2) {
        ?? r02 = this.f16127a;
        Long lM = sVar.m(r02);
        if (lM == null) {
            return false;
        }
        long jLongValue = lM.longValue();
        String string = jLongValue == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(jLongValue));
        int length = string.length();
        int i10 = this.f16129c;
        if (length > i10) {
            throw new sh.a("Field " + ((Object) r02) + " cannot be printed as the value " + jLongValue + " exceeds the maximum print width of " + i10);
        }
        ((p) sVar.f2428d).getClass();
        int i11 = this.f16128b;
        int i12 = this.f16130d;
        if (jLongValue >= 0) {
            int iC = d0.f.c(i12);
            if (iC == 1) {
                sb2.append('+');
            } else if (iC == 4 && i11 < 19 && jLongValue >= f16126f[i11]) {
                sb2.append('+');
            }
        } else {
            int iC2 = d0.f.c(i12);
            if (iC2 == 0 || iC2 == 1) {
                sb2.append('-');
            } else {
                if (iC2 == 3) {
                    throw new sh.a("Field " + ((Object) r02) + " cannot be printed as the value " + jLongValue + " cannot be negative according to the SignStyle");
                }
                if (iC2 == 4) {
                }
            }
        }
        for (int i13 = 0; i13 < i11 - string.length(); i13++) {
            sb2.append('0');
        }
        sb2.append(string);
        return true;
    }

    public final String toString() {
        Enum r02 = this.f16127a;
        int i10 = this.f16130d;
        int i11 = this.f16129c;
        int i12 = this.f16128b;
        if (i12 == 1 && i11 == 19 && i10 == 1) {
            return "Value(" + r02 + ")";
        }
        if (i12 == i11 && i10 == 4) {
            return "Value(" + r02 + "," + i12 + ")";
        }
        StringBuilder sb2 = new StringBuilder("Value(");
        sb2.append(r02);
        sb2.append(",");
        sb2.append(i12);
        sb2.append(",");
        sb2.append(i11);
        sb2.append(",");
        sb2.append(i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? "null" : "EXCEEDS_PAD" : "NOT_NEGATIVE" : "NEVER" : "ALWAYS" : "NORMAL");
        sb2.append(")");
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(wh.m mVar, int i10, int i11, int i12, int i13) {
        this.f16127a = (Enum) mVar;
        this.f16128b = i10;
        this.f16129c = i11;
        this.f16130d = i12;
        this.f16131e = i13;
    }
}
