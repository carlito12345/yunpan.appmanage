package a9;

import java.util.Hashtable;

/* loaded from: classes.dex */
public abstract class e extends b {

    /* renamed from: b, reason: collision with root package name */
    public static final Hashtable f478b = new Hashtable();

    /* renamed from: c, reason: collision with root package name */
    public static final Hashtable f479c = new Hashtable();

    public static void e(f0 f0Var) {
        Hashtable hashtable = f479c;
        synchronized (hashtable) {
            hashtable.remove(f0Var);
            f478b.remove(f0Var);
        }
    }
}
