package l2;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f10529c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a, reason: collision with root package name */
    public int f10530a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f10531b = -1;

    public final boolean a() {
        return (this.f10530a == -1 || this.f10531b == -1) ? false : true;
    }

    public final boolean b(String str) throws NumberFormatException {
        Matcher matcher = f10529c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String strGroup = matcher.group(1);
            String str2 = u1.f0.f15206a;
            int i10 = Integer.parseInt(strGroup, 16);
            int i11 = Integer.parseInt(matcher.group(2), 16);
            if (i10 <= 0 && i11 <= 0) {
                return false;
            }
            this.f10530a = i10;
            this.f10531b = i11;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final void c(r1.d0 d0Var) {
        u7.e0 e0VarListIterator = d0Var.d(z2.e.class, new e3.d(1)).listIterator(0);
        while (e0VarListIterator.hasNext()) {
            if (b(((z2.e) e0VarListIterator.next()).f19409d)) {
                return;
            }
        }
        u7.e0 e0VarListIterator2 = d0Var.d(z2.k.class, new e3.d(2)).listIterator(0);
        while (e0VarListIterator2.hasNext() && !b(((z2.k) e0VarListIterator2.next()).f19420d)) {
        }
    }
}
