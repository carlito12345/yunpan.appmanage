package h5;

import a2.g1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final v3.f f6671a;

    /* renamed from: b, reason: collision with root package name */
    public final List f6672b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6673c;

    public x(Class cls, Class cls2, Class cls3, List list, v3.f fVar) {
        this.f6671a = fVar;
        if (list.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.f6672b = list;
        this.f6673c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final z a(int i10, int i11, g1 g1Var, com.bumptech.glide.load.data.g gVar, f5.i iVar) {
        v3.f fVar = this.f6671a;
        List list = (List) fVar.l();
        try {
            List list2 = this.f6672b;
            int size = list2.size();
            z zVarA = null;
            for (int i12 = 0; i12 < size; i12++) {
                try {
                    zVarA = ((k) list2.get(i12)).a(i10, i11, g1Var, gVar, iVar);
                } catch (v e7) {
                    list.add(e7);
                }
                if (zVarA != null) {
                    break;
                }
            }
            if (zVarA != null) {
                return zVarA;
            }
            throw new v(this.f6673c, new ArrayList(list));
        } finally {
            fVar.L(list);
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f6672b.toArray()) + '}';
    }
}
