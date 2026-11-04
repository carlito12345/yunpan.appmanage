package ph;

/* loaded from: classes3.dex */
public class x extends p {
    public x(String str) {
        super(str);
    }

    public static boolean D(StringBuilder sb2) {
        return sb2.length() != 0 && sb2.charAt(sb2.length() - 1) == ' ';
    }

    @Override // ph.q
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public x clone() {
        return (x) super.clone();
    }

    @Override // ph.q
    public String o() {
        return "#text";
    }

    @Override // ph.q
    public void s(oh.a aVar, g gVar) {
        n.c(aVar, A(), gVar, 1);
    }

    @Override // ph.q
    public final String toString() {
        return r();
    }
}
