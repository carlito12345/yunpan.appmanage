package wb;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final int f17815a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f17816b;

    public m(int i10, ArrayList arrayList) {
        this.f17815a = i10;
        this.f17816b = arrayList;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int i10 = ((m) obj).f17815a;
        int i11 = this.f17815a;
        if (i11 == i10) {
            return 0;
        }
        return i11 < i10 ? -1 : 1;
    }
}
