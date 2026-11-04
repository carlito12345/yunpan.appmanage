package cd;

import vc.g;
import vd.m;

/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2991a;

    /* renamed from: b, reason: collision with root package name */
    public int f2992b;

    /* renamed from: c, reason: collision with root package name */
    public int f2993c;

    /* renamed from: d, reason: collision with root package name */
    public m f2994d;

    @Override // vc.g
    public final int i(int i10, int i11, byte[] bArr) {
        int i12 = i10 + 1;
        this.f2991a = bArr[i10] == 0;
        this.f2992b = bArr[i12] & 255;
        int iA = rd.a.a(i10 + 2, bArr);
        this.f2993c = rd.a.b(i10 + 4, bArr);
        this.f2994d = new m(bArr, i10 + 8);
        return iA;
    }

    public final String toString() {
        String string;
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f2991a ? "Allow " : "Deny  ");
        m mVar = this.f2994d;
        String str2 = mVar.f16893e;
        if (str2 == null) {
            string = mVar.toString();
        } else if (str2.equals("BUILTIN")) {
            string = mVar.f16894f;
        } else {
            string = mVar.f16893e + "\\" + mVar.f16894f;
        }
        stringBuffer.append(string);
        int length = 25 - string.length();
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append(' ');
        }
        stringBuffer.append(" 0x");
        stringBuffer.append(ge.a.l(this.f2993c, 8));
        stringBuffer.append(' ');
        stringBuffer.append((this.f2992b & 16) != 0 ? "Inherited " : "Direct    ");
        int i11 = this.f2992b & 11;
        if (i11 == 0) {
            str = "This folder only";
        } else if (i11 == 1) {
            str = "This folder and files";
        } else if (i11 == 2) {
            str = "This folder and subfolders";
        } else if (i11 != 3) {
            switch (i11) {
                case 9:
                    str = "Files only";
                    break;
                case 10:
                    str = "Subfolders only";
                    break;
                case 11:
                    str = "Subfolders and files only";
                    break;
                default:
                    str = "Invalid";
                    break;
            }
        } else {
            str = "This folder, subfolders and files";
        }
        stringBuffer.append(str);
        int length2 = 34 - str.length();
        for (int i12 = 0; i12 < length2; i12++) {
            stringBuffer.append(' ');
        }
        return stringBuffer.toString();
    }
}
