package ab;

import java.util.Locale;
import mf.h;
import net.sf.sevenzipjbinding.ICryptoGetTextPassword;
import net.sf.sevenzipjbinding.IOutCreateCallback;

/* loaded from: classes.dex */
public abstract class a implements IOutCreateCallback, ICryptoGetTextPassword {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f566a;

    /* renamed from: b, reason: collision with root package name */
    public int f567b;

    public /* synthetic */ a(int i10) {
        this.f566a = i10;
        this.f567b = 0;
    }

    public static String b(int i10) {
        return "" + ((char) ((i10 >> 24) & 255)) + ((char) ((i10 >> 16) & 255)) + ((char) ((i10 >> 8) & 255)) + ((char) (i10 & 255));
    }

    public void a(int i10) {
        this.f567b = i10 | this.f567b;
    }

    public boolean c(int i10) {
        return (this.f567b & i10) == i10;
    }

    public abstract String f(h hVar, Locale locale);

    public String toString() {
        switch (this.f566a) {
            case 4:
                return b(this.f567b);
            default:
                return super.toString();
        }
    }

    public /* synthetic */ a(int i10, int i11) {
        this.f566a = i11;
        this.f567b = i10;
    }
}
