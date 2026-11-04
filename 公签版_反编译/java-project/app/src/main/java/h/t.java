package h;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final a[] f6277a;

    /* renamed from: b, reason: collision with root package name */
    public volatile String f6278b;

    public t(String str, Map map) throws IOException {
        ArrayList arrayList = new ArrayList(3);
        int iIndexOf = str.indexOf(43);
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (iIndexOf >= 0) {
            int iA = w.a(i12, iIndexOf, str) + i11;
            if (iIndexOf <= 0 || str.charAt(iIndexOf - 1) == '\\' || iA == 1) {
                i11 = iA;
            } else {
                String strSubstring = str.substring(i10, iIndexOf);
                if (strSubstring.length() == 0) {
                    throw new IOException(g.b.A("empty AVA in RDN \"", str, "\""));
                }
                arrayList.add(new a(new StringReader(strSubstring), map));
                i10 = iIndexOf + 1;
                i11 = 0;
            }
            i12 = iIndexOf + 1;
            iIndexOf = str.indexOf(43, i12);
        }
        String strSubstring2 = str.substring(i10);
        if (strSubstring2.length() == 0) {
            throw new IOException(g.b.A("empty AVA in RDN \"", str, "\""));
        }
        arrayList.add(new a(new StringReader(strSubstring2), map));
        this.f6277a = (a[]) arrayList.toArray(new a[arrayList.size()]);
    }

    public final String a() {
        String string = this.f6278b;
        if (string == null) {
            Collections.emptyMap();
            a[] aVarArr = this.f6277a;
            if (aVarArr.length == 1) {
                string = aVarArr[0].g();
            } else {
                StringBuilder sb2 = new StringBuilder();
                ArrayList arrayList = new ArrayList(aVarArr.length);
                for (a aVar : aVarArr) {
                    arrayList.add(aVar);
                }
                Collections.sort(arrayList, b.f6207a);
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    if (i10 > 0) {
                        sb2.append('+');
                    }
                    sb2.append(((a) arrayList.get(i10)).g());
                }
                string = sb2.toString();
            }
            this.f6278b = string;
        }
        return string;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        if (this.f6277a.length != tVar.f6277a.length) {
            return false;
        }
        return a().equals(tVar.a());
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        a[] aVarArr = this.f6277a;
        if (aVarArr.length == 1) {
            return aVarArr[0].toString();
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            if (i10 != 0) {
                sb2.append(" + ");
            }
            sb2.append(aVarArr[i10].toString());
        }
        return sb2.toString();
    }
}
