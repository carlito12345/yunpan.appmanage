package c8;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b extends z7.a0 {

    /* renamed from: c, reason: collision with root package name */
    public static final a f2884c = new a();

    /* renamed from: a, reason: collision with root package name */
    public final Class f2885a;

    /* renamed from: b, reason: collision with root package name */
    public final b0 f2886b;

    public b(z7.m mVar, z7.a0 a0Var, Class cls) {
        this.f2886b = new b0(mVar, a0Var, cls);
        this.f2885a = cls;
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.r();
        while (aVar.R()) {
            arrayList.add(this.f2886b.f2888b.b(aVar));
        }
        aVar.L();
        int size = arrayList.size();
        Class cls = this.f2885a;
        if (!cls.isPrimitive()) {
            return arrayList.toArray((Object[]) Array.newInstance((Class<?>) cls, size));
        }
        Object objNewInstance = Array.newInstance((Class<?>) cls, size);
        for (int i10 = 0; i10 < size; i10++) {
            Array.set(objNewInstance, i10, arrayList.get(i10));
        }
        return objNewInstance;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException {
        if (obj == null) {
            bVar.P();
            return;
        }
        bVar.A();
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            this.f2886b.c(bVar, Array.get(obj, i10));
        }
        bVar.L();
    }
}
