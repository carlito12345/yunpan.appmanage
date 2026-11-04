package t7;

/* loaded from: classes.dex */
public abstract class a implements e {
    public abstract boolean a(char c7);

    @Override // t7.e
    public final boolean apply(Object obj) {
        return a(((Character) obj).charValue());
    }
}
