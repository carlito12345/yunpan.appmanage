package w3;

import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Constructor;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17430a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f17431b;

    public a(Class cls, int i10) throws NoSuchMethodException, SecurityException {
        this.f17430a = i10;
        switch (i10) {
            case 1:
                Constructor constructor = cls.getConstructor(File.class, File.class, DexFile.class);
                this.f17431b = constructor;
                constructor.setAccessible(true);
                break;
            case 2:
                Constructor constructor2 = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.f17431b = constructor2;
                constructor2.setAccessible(true);
                break;
            default:
                Constructor constructor3 = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.f17431b = constructor3;
                constructor3.setAccessible(true);
                break;
        }
    }

    public a() throws ClassNotFoundException {
        a aVar;
        this.f17430a = 3;
        Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
        try {
            try {
                aVar = new a(cls, 0);
            } catch (NoSuchMethodException unused) {
                aVar = new a(cls, 2);
            }
        } catch (NoSuchMethodException unused2) {
            aVar = new a(cls, 1);
        }
        this.f17431b = aVar;
    }
}
