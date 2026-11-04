package j$.time.format;

import j$.time.DateTimeException;

/* loaded from: classes2.dex */
class j implements g {

    /* renamed from: f, reason: collision with root package name */
    static final long[] f8847f = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000L};

    /* renamed from: a, reason: collision with root package name */
    final Enum f8848a;

    /* renamed from: b, reason: collision with root package name */
    final int f8849b;

    /* renamed from: c, reason: collision with root package name */
    final int f8850c;

    /* renamed from: d, reason: collision with root package name */
    private final v f8851d;

    /* renamed from: e, reason: collision with root package name */
    final int f8852e;

    /* JADX WARN: Multi-variable type inference failed */
    j(j$.time.temporal.r rVar, int i10, int i11, v vVar) {
        this.f8848a = (Enum) rVar;
        this.f8849b = i10;
        this.f8850c = i11;
        this.f8851d = vVar;
        this.f8852e = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected j(j$.time.temporal.r rVar, int i10, int i11, v vVar, int i12) {
        this.f8848a = (Enum) rVar;
        this.f8849b = i10;
        this.f8850c = i11;
        this.f8851d = vVar;
        this.f8852e = i12;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [j$.time.temporal.r, java.lang.Enum] */
    j b() {
        return this.f8852e == -1 ? this : new j(this.f8848a, this.f8849b, this.f8850c, this.f8851d, -1);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [j$.time.temporal.r, java.lang.Enum] */
    j c(int i10) {
        int i11 = this.f8852e + i10;
        return new j(this.f8848a, this.f8849b, this.f8850c, this.f8851d, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.time.temporal.r, java.lang.Enum, java.lang.Object] */
    @Override // j$.time.format.g
    public boolean j(q qVar, StringBuilder sb2) {
        ?? r02 = this.f8848a;
        Long lE = qVar.e(r02);
        if (lE == null) {
            return false;
        }
        long jLongValue = lE.longValue();
        t tVarB = qVar.b();
        String string = jLongValue == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(jLongValue));
        int length = string.length();
        int i10 = this.f8850c;
        if (length > i10) {
            throw new DateTimeException("Field " + ((Object) r02) + " cannot be printed as the value " + jLongValue + " exceeds the maximum print width of " + i10);
        }
        tVarB.getClass();
        int i11 = this.f8849b;
        v vVar = this.f8851d;
        if (jLongValue >= 0) {
            int i12 = d.f8842a[vVar.ordinal()];
            if (i12 != 1) {
                if (i12 == 2) {
                    sb2.append('+');
                }
            } else if (i11 < 19 && jLongValue >= f8847f[i11]) {
                sb2.append('+');
            }
        } else {
            int i13 = d.f8842a[vVar.ordinal()];
            if (i13 == 1 || i13 == 2 || i13 == 3) {
                sb2.append('-');
            } else if (i13 == 4) {
                throw new DateTimeException("Field " + ((Object) r02) + " cannot be printed as the value " + jLongValue + " cannot be negative according to the SignStyle");
            }
        }
        for (int i14 = 0; i14 < i11 - string.length(); i14++) {
            sb2.append('0');
        }
        sb2.append(string);
        return true;
    }

    public String toString() {
        Enum r02 = this.f8848a;
        int i10 = this.f8850c;
        v vVar = this.f8851d;
        int i11 = this.f8849b;
        if (i11 == 1 && i10 == 19 && vVar == v.NORMAL) {
            return "Value(" + r02 + ")";
        }
        if (i11 == i10 && vVar == v.NOT_NEGATIVE) {
            return "Value(" + r02 + "," + i11 + ")";
        }
        return "Value(" + r02 + "," + i11 + "," + i10 + "," + vVar + ")";
    }
}
