package sc;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class a implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final String f14481a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14482b;

    public a(String str, String str2, String str3) {
        if (str2 == null) {
            throw new IllegalArgumentException("Local part not allowed to be null");
        }
        this.f14481a = str == null ? "" : str;
        this.f14482b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f14482b.equals(aVar.f14482b) && this.f14481a.equals(aVar.f14481a);
    }

    public final int hashCode() {
        return this.f14481a.hashCode() ^ this.f14482b.hashCode();
    }

    public final String toString() {
        String str = this.f14481a;
        boolean zEquals = str.equals("");
        String str2 = this.f14482b;
        if (zEquals) {
            return str2;
        }
        StringBuffer stringBuffer = new StringBuffer("{");
        stringBuffer.append(str);
        stringBuffer.append("}");
        stringBuffer.append(str2);
        return stringBuffer.toString();
    }
}
