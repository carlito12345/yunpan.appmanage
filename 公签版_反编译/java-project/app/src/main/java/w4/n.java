package w4;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final int f17471a;

    /* renamed from: b, reason: collision with root package name */
    public final y4.c f17472b;

    /* renamed from: c, reason: collision with root package name */
    public final y4.e f17473c;

    /* renamed from: d, reason: collision with root package name */
    public final y4.b f17474d;

    /* renamed from: e, reason: collision with root package name */
    public final int f17475e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f17476f;

    /* renamed from: g, reason: collision with root package name */
    public final String f17477g;

    public n(int i10, y4.c cVar, y4.e eVar, y4.b bVar, int i11, boolean z, String str) {
        if (cVar == null) {
            throw new NullPointerException("result == null");
        }
        if (eVar == null) {
            throw new NullPointerException("sources == null");
        }
        if (bVar == null) {
            throw new NullPointerException("exceptions == null");
        }
        if (i11 < 1 || i11 > 6) {
            throw new IllegalArgumentException(da.b.a(i11, "invalid branchingness: "));
        }
        if (bVar.f2559b.length != 0 && i11 != 6) {
            throw new IllegalArgumentException("exceptions / branchingness mismatch");
        }
        this.f17471a = i10;
        this.f17472b = cVar;
        this.f17473c = eVar;
        this.f17474d = bVar;
        this.f17475e = i11;
        this.f17476f = z;
        this.f17477g = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f17471a == nVar.f17471a && this.f17475e == nVar.f17475e && this.f17472b == nVar.f17472b && this.f17473c.equals(nVar.f17473c) && this.f17474d.equals(nVar.f17474d);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f17474d.f2559b) + ((Arrays.hashCode(((b5.c) this.f17473c).f2559b) + org.bouncycastle.jcajce.provider.digest.a.c(((this.f17471a * 31) + this.f17475e) * 31, 31, this.f17472b.f18963a)) * 31);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String strConcat;
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Rop{");
        int i10 = this.f17471a;
        switch (i10) {
            case 1:
                strConcat = "nop";
                break;
            case 2:
                strConcat = "move";
                break;
            case 3:
                strConcat = "move-param";
                break;
            case 4:
                strConcat = "move-exception";
                break;
            case 5:
                strConcat = "const";
                break;
            case 6:
                strConcat = "goto";
                break;
            case 7:
                strConcat = "if-eq";
                break;
            case 8:
                strConcat = "if-ne";
                break;
            case 9:
                strConcat = "if-lt";
                break;
            case 10:
                strConcat = "if-ge";
                break;
            case 11:
                strConcat = "if-le";
                break;
            case 12:
                strConcat = "if-gt";
                break;
            case 13:
                strConcat = "switch";
                break;
            case 14:
                strConcat = "add";
                break;
            case 15:
                strConcat = "sub";
                break;
            case 16:
                strConcat = "mul";
                break;
            case 17:
                strConcat = "div";
                break;
            case 18:
                strConcat = "rem";
                break;
            case 19:
                strConcat = "neg";
                break;
            case 20:
                strConcat = "and";
                break;
            case 21:
                strConcat = "or";
                break;
            case 22:
                strConcat = "xor";
                break;
            case 23:
                strConcat = "shl";
                break;
            case 24:
                strConcat = "shr";
                break;
            case 25:
                strConcat = "ushr";
                break;
            case 26:
                strConcat = "not";
                break;
            case 27:
                strConcat = "cmpl";
                break;
            case 28:
                strConcat = "cmpg";
                break;
            case 29:
                strConcat = "conv";
                break;
            case 30:
                strConcat = "to-byte";
                break;
            case 31:
                strConcat = "to-char";
                break;
            case 32:
                strConcat = "to-short";
                break;
            case 33:
                strConcat = "return";
                break;
            case 34:
                strConcat = "array-length";
                break;
            case 35:
                strConcat = "throw";
                break;
            case 36:
                strConcat = "monitor-enter";
                break;
            case 37:
                strConcat = "monitor-exit";
                break;
            case 38:
                strConcat = "aget";
                break;
            case 39:
                strConcat = "aput";
                break;
            case 40:
                strConcat = "new-instance";
                break;
            case 41:
                strConcat = "new-array";
                break;
            case 42:
                strConcat = "filled-new-array";
                break;
            case 43:
                strConcat = "check-cast";
                break;
            case 44:
                strConcat = "instance-of";
                break;
            case 45:
                strConcat = "get-field";
                break;
            case 46:
                strConcat = "get-static";
                break;
            case 47:
                strConcat = "put-field";
                break;
            case 48:
                strConcat = "put-static";
                break;
            case 49:
                strConcat = "invoke-static";
                break;
            case 50:
                strConcat = "invoke-virtual";
                break;
            case 51:
                strConcat = "invoke-super";
                break;
            case 52:
                strConcat = "invoke-direct";
                break;
            case 53:
                strConcat = "invoke-interface";
                break;
            case 54:
            default:
                strConcat = "unknown-".concat(qf.c.d0(i10));
                break;
            case 55:
                strConcat = "move-result";
                break;
            case 56:
                strConcat = "move-result-pseudo";
                break;
            case 57:
                strConcat = "fill-array-data";
                break;
            case 58:
                strConcat = "invoke-polymorphic";
                break;
            case 59:
                strConcat = "invoke-custom";
                break;
        }
        sb2.append(strConcat);
        y4.c cVar = y4.c.f18955p;
        y4.c cVar2 = this.f17472b;
        if (cVar2 != cVar) {
            sb2.append(" ");
            sb2.append(cVar2);
        } else {
            sb2.append(" .");
        }
        sb2.append(" <-");
        y4.e eVar = this.f17473c;
        int length = ((b5.c) eVar).f2559b.length;
        if (length == 0) {
            sb2.append(" .");
        } else {
            for (int i11 = 0; i11 < length; i11++) {
                sb2.append(' ');
                sb2.append(eVar.b(i11));
            }
        }
        if (this.f17476f) {
            sb2.append(" call");
        }
        y4.b bVar = this.f17474d;
        int length2 = bVar.f2559b.length;
        if (length2 != 0) {
            sb2.append(" throws");
            for (int i12 = 0; i12 < length2; i12++) {
                sb2.append(' ');
                if (((y4.c) bVar.d(i12)) == y4.c.f18961x) {
                    sb2.append("<any>");
                } else {
                    sb2.append((y4.c) bVar.d(i12));
                }
            }
        } else {
            int i13 = this.f17475e;
            if (i13 == 1) {
                sb2.append(" flows");
            } else if (i13 == 2) {
                sb2.append(" returns");
            } else if (i13 == 3) {
                sb2.append(" gotos");
            } else if (i13 == 4) {
                sb2.append(" ifs");
            } else if (i13 != 5) {
                sb2.append(" ".concat(qf.c.d0(i13)));
            } else {
                sb2.append(" switches");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public n(int i10, y4.c cVar, y4.b bVar, int i11, String str) {
        this(i10, cVar, bVar, y4.b.f18928c, i11, false, str);
    }

    public n(int i10, y4.c cVar, y4.e eVar, String str) {
        this(i10, cVar, eVar, y4.b.f18928c, 1, false, str);
    }

    public n(int i10, y4.c cVar, y4.e eVar, y4.b bVar, String str) {
        this(i10, cVar, eVar, bVar, 6, false, str);
    }

    public n(int i10, y4.b bVar, y4.b bVar2) {
        this(i10, y4.c.f18955p, bVar, bVar2, 6, true, null);
    }
}
