package c8;

import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class j extends z7.a0 {

    /* renamed from: d, reason: collision with root package name */
    public static final i f2923d = new i();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f2924a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f2925b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f2926c = new HashMap();

    public j(Class cls) throws SecurityException {
        try {
            Field[] declaredFields = cls.getDeclaredFields();
            int i10 = 0;
            for (Field field : declaredFields) {
                if (field.isEnumConstant()) {
                    declaredFields[i10] = field;
                    i10++;
                }
            }
            Field[] fieldArr = (Field[]) Arrays.copyOf(declaredFields, i10);
            AccessibleObject.setAccessible(fieldArr, true);
            for (Field field2 : fieldArr) {
                Enum r4 = (Enum) field2.get(null);
                String strName = r4.name();
                String string = r4.toString();
                a8.b bVar = (a8.b) field2.getAnnotation(a8.b.class);
                if (bVar != null) {
                    strName = bVar.value();
                    for (String str : bVar.alternate()) {
                        this.f2924a.put(str, r4);
                    }
                }
                this.f2924a.put(strName, r4);
                this.f2925b.put(string, r4);
                this.f2926c.put(r4, strName);
            }
        } catch (IllegalAccessException e7) {
            throw new AssertionError(e7);
        }
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        String strC0 = aVar.c0();
        Enum r02 = (Enum) this.f2924a.get(strC0);
        return r02 == null ? (Enum) this.f2925b.get(strC0) : r02;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        Enum r32 = (Enum) obj;
        bVar.X(r32 == null ? null : (String) this.f2926c.get(r32));
    }
}
