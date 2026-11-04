package s1;

/* loaded from: classes.dex */
public final class k extends Exception {
    public k(i iVar) {
        this("Unhandled input format:", iVar);
    }

    public k(String str, i iVar) {
        super(str + " " + iVar);
    }
}
