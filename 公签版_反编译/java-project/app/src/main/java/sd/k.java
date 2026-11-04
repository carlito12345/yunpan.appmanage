package sd;

import java.net.InetAddress;
import vc.l;

/* loaded from: classes.dex */
public final class k implements vc.a {

    /* renamed from: a, reason: collision with root package name */
    public final Object f14550a;

    /* renamed from: b, reason: collision with root package name */
    public String f14551b;

    public k(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException();
        }
        this.f14550a = obj;
    }

    public static boolean d(String str) {
        if (Character.isDigit(str.charAt(0))) {
            int length = str.length();
            char[] charArray = str.toCharArray();
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                int i12 = i10 + 1;
                if (!Character.isDigit(charArray[i10])) {
                    break;
                }
                if (i12 == length && i11 == 3) {
                    return true;
                }
                if (i12 >= length || charArray[i12] != '.') {
                    i10 = i12;
                } else {
                    i11++;
                    i10 += 2;
                }
            }
        }
        return false;
    }

    @Override // vc.a
    public final vc.a a() {
        Object obj = this.f14550a;
        if (obj instanceof vc.a) {
            return ((vc.a) obj).a();
        }
        if (k.class.isAssignableFrom(l.class)) {
            return this;
        }
        return null;
    }

    @Override // vc.a
    public final String b() {
        Object obj = this.f14550a;
        return obj instanceof h ? ((h) obj).b() : ((InetAddress) obj).getHostAddress();
    }

    public final String c() {
        Object obj = this.f14550a;
        return obj instanceof h ? ((h) obj).c() : ((InetAddress) obj).getHostName();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k) {
            if (this.f14550a.equals(((k) obj).f14550a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f14550a.hashCode();
    }

    public final String toString() {
        return this.f14550a.toString();
    }
}
