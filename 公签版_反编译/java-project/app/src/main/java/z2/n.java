package z2;

import j$.util.Objects;
import java.util.ArrayList;
import r1.a0;
import u1.f0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class n extends i {

    /* renamed from: b, reason: collision with root package name */
    public final String f19428b;

    /* renamed from: c, reason: collision with root package name */
    public final g0 f19429c;

    public n(String str, String str2, y0 y0Var) {
        super(str);
        a9.o.k(!y0Var.isEmpty());
        this.f19428b = str2;
        g0 g0VarM = g0.m(y0Var);
        this.f19429c = g0VarM;
    }

    public static ArrayList d(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // z2.i, r1.c0
    public final void b(a0 a0Var) throws NumberFormatException {
        String str = this.f19416a;
        g0 g0Var = this.f19429c;
        char c7 = 65535;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    c7 = 0;
                    break;
                }
                break;
            case 82878:
                if (str.equals("TCM")) {
                    c7 = 1;
                    break;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    c7 = 2;
                    break;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    c7 = 3;
                    break;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    c7 = 4;
                    break;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    c7 = 5;
                    break;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    c7 = 6;
                    break;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    c7 = 7;
                    break;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    c7 = '\b';
                    break;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    c7 = '\t';
                    break;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    c7 = '\n';
                    break;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    c7 = 11;
                    break;
                }
                break;
            case 2569358:
                if (str.equals("TCON")) {
                    c7 = '\f';
                    break;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    c7 = '\r';
                    break;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    c7 = 14;
                    break;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    c7 = 15;
                    break;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    c7 = 16;
                    break;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    c7 = 17;
                    break;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    c7 = 18;
                    break;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    c7 = 19;
                    break;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    c7 = 20;
                    break;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    c7 = 21;
                    break;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    c7 = 22;
                    break;
                }
                break;
        }
        try {
            switch (c7) {
                case 0:
                case '\n':
                    a0Var.f13373c = (CharSequence) g0Var.get(0);
                    break;
                case 1:
                case 11:
                    a0Var.f13387s = (CharSequence) g0Var.get(0);
                    break;
                case 2:
                case '\r':
                    String str2 = (String) g0Var.get(0);
                    int i10 = Integer.parseInt(str2.substring(2, 4));
                    int i11 = Integer.parseInt(str2.substring(0, 2));
                    a0Var.d(Integer.valueOf(i10));
                    a0Var.c(Integer.valueOf(i11));
                    break;
                case 3:
                case 18:
                    a0Var.f13372b = (CharSequence) g0Var.get(0);
                    break;
                case 4:
                case 19:
                    a0Var.f13374d = (CharSequence) g0Var.get(0);
                    break;
                case 5:
                case 20:
                    a0Var.f13388t = (CharSequence) g0Var.get(0);
                    break;
                case 6:
                case 21:
                    String[] strArrP = f0.P((String) g0Var.get(0));
                    int i12 = Integer.parseInt(strArrP[0]);
                    Integer numValueOf = strArrP.length > 1 ? Integer.valueOf(Integer.parseInt(strArrP[1])) : null;
                    a0Var.f13378h = Integer.valueOf(i12);
                    a0Var.f13379i = numValueOf;
                    break;
                case 7:
                case 17:
                    a0Var.f13371a = (CharSequence) g0Var.get(0);
                    break;
                case '\b':
                case 16:
                    a0Var.r = (CharSequence) g0Var.get(0);
                    break;
                case '\t':
                case 22:
                    a0Var.e(Integer.valueOf(Integer.parseInt((String) g0Var.get(0))));
                    break;
                case '\f':
                    Integer numS0 = d.b.s0((String) g0Var.get(0));
                    if (numS0 != null) {
                        String strA = j.a(numS0.intValue());
                        if (strA != null) {
                            a0Var.b(strA);
                            break;
                        }
                    } else {
                        a0Var.b((CharSequence) g0Var.get(0));
                        break;
                    }
                    break;
                case 14:
                    ArrayList arrayListD = d((String) g0Var.get(0));
                    int size = arrayListD.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                a0Var.c((Integer) arrayListD.get(2));
                            }
                        }
                        a0Var.d((Integer) arrayListD.get(1));
                    }
                    a0Var.e((Integer) arrayListD.get(0));
                    break;
                case 15:
                    ArrayList arrayListD2 = d((String) g0Var.get(0));
                    int size2 = arrayListD2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                a0Var.f13386q = (Integer) arrayListD2.get(2);
                            }
                        }
                        a0Var.f13385p = (Integer) arrayListD2.get(1);
                    }
                    a0Var.f13384o = (Integer) arrayListD2.get(0);
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        return Objects.equals(this.f19416a, nVar.f19416a) && Objects.equals(this.f19428b, nVar.f19428b) && this.f19429c.equals(nVar.f19429c);
    }

    public final int hashCode() {
        int iC = org.bouncycastle.jcajce.provider.digest.a.c(527, 31, this.f19416a);
        String str = this.f19428b;
        return this.f19429c.hashCode() + ((iC + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // z2.i
    public final String toString() {
        return this.f19416a + ": description=" + this.f19428b + ": values=" + this.f19429c;
    }
}
