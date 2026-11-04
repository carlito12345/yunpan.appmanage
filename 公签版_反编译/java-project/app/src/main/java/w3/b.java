package w3;

import android.os.Build;
import com.yunpan.appmanage.base.AppStart;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.StringTokenizer;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f17432a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f17433b;

    static {
        String property = System.getProperty("java.vm.version");
        boolean z = false;
        if (property != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property, ".");
            String strNextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            String strNextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            if (strNextToken != null && strNextToken2 != null) {
                try {
                    int i10 = Integer.parseInt(strNextToken);
                    int i11 = Integer.parseInt(strNextToken2);
                    if (i10 > 2 || (i10 == 2 && i11 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        f17433b = z;
    }

    public static void a(Object obj, String str, Object[] objArr) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        Field fieldD = d(obj, str);
        Object[] objArr2 = (Object[]) fieldD.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        fieldD.set(obj, objArr3);
    }

    public static void b(AppStart appStart) {
        File file = new File(appStart.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            file.getPath();
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                file.getPath();
                return;
            }
            for (File file2 : fileArrListFiles) {
                file2.getPath();
                file2.length();
                if (file2.delete()) {
                    file2.getPath();
                } else {
                    file2.getPath();
                }
            }
            if (file.delete()) {
                file.getPath();
            } else {
                file.getPath();
            }
        }
    }

    public static void c(AppStart appStart, File file, File file2) {
        ClassLoader classLoader;
        HashSet hashSet = f17432a;
        synchronized (hashSet) {
            try {
                if (hashSet.contains(file)) {
                    return;
                }
                hashSet.add(file);
                if (Build.VERSION.SDK_INT > 20) {
                    System.getProperty("java.vm.version");
                }
                IOException e7 = null;
                try {
                    classLoader = appStart.getClassLoader();
                } catch (RuntimeException unused) {
                }
                if (!(classLoader instanceof BaseDexClassLoader)) {
                    classLoader = null;
                }
                if (classLoader == null) {
                    return;
                }
                try {
                    b(appStart);
                } catch (Throwable unused2) {
                }
                File file3 = new File(file2, "code_cache");
                try {
                    f(file3);
                } catch (IOException unused3) {
                    file3 = new File(appStart.getFilesDir(), "code_cache");
                    f(file3);
                }
                File file4 = new File(file3, "secondary-dexes");
                f(file4);
                e eVar = new e(file, file4);
                try {
                    try {
                        e((BaseDexClassLoader) classLoader, file4, eVar.J(appStart, false));
                    } catch (IOException unused4) {
                        e((BaseDexClassLoader) classLoader, file4, eVar.J(appStart, true));
                    }
                    try {
                    } catch (IOException e10) {
                        e7 = e10;
                    }
                    if (e7 != null) {
                        throw e7;
                    }
                } finally {
                    try {
                        eVar.close();
                    } catch (IOException unused5) {
                    }
                }
            } finally {
            }
        }
    }

    public static Field d(Object obj, String str) throws NoSuchFieldException, SecurityException {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        StringBuilder sbD = da.b.d("Field ", str, " not found in ");
        sbD.append(obj.getClass());
        throw new NoSuchFieldException(sbD.toString());
    }

    public static void e(BaseDexClassLoader baseDexClassLoader, File file, ArrayList arrayList) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, InstantiationException, SecurityException, IOException, IllegalArgumentException, InvocationTargetException {
        Object objNewInstance;
        IOException[] iOExceptionArr;
        int i10 = 4;
        if (arrayList.isEmpty()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            Object obj = d(baseDexClassLoader, "pathList").get(baseDexClassLoader);
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList(arrayList);
            Class<?>[] clsArr = {ArrayList.class, File.class, ArrayList.class};
            for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                try {
                    Method declaredMethod = superclass.getDeclaredMethod("makeDexElements", clsArr);
                    if (!declaredMethod.isAccessible()) {
                        declaredMethod.setAccessible(true);
                    }
                    a(obj, "dexElements", (Object[]) declaredMethod.invoke(obj, arrayList3, file, arrayList2));
                    if (arrayList2.size() > 0) {
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                        }
                        Field fieldD = d(obj, "dexElementsSuppressedExceptions");
                        IOException[] iOExceptionArr2 = (IOException[]) fieldD.get(obj);
                        if (iOExceptionArr2 == null) {
                            iOExceptionArr = (IOException[]) arrayList2.toArray(new IOException[arrayList2.size()]);
                        } else {
                            IOException[] iOExceptionArr3 = new IOException[arrayList2.size() + iOExceptionArr2.length];
                            arrayList2.toArray(iOExceptionArr3);
                            System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList2.size(), iOExceptionArr2.length);
                            iOExceptionArr = iOExceptionArr3;
                        }
                        fieldD.set(obj, iOExceptionArr);
                        IOException iOException = new IOException("I/O exception during makeDexElement");
                        iOException.initCause((Throwable) arrayList2.get(0));
                        throw iOException;
                    }
                    return;
                } catch (NoSuchMethodException unused) {
                }
            }
            throw new NoSuchMethodException("Method makeDexElements with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
        }
        Object obj2 = d(baseDexClassLoader, "pathList").get(baseDexClassLoader);
        a aVar = new a();
        int size = arrayList.size();
        Object[] objArr = new Object[size];
        int i11 = 0;
        while (i11 < size) {
            File file2 = (File) arrayList.get(i11);
            DexFile dexFileLoadDex = DexFile.loadDex(file2.getPath(), new File(file2.getParentFile(), file2.getName().substring(0, r15.length() - 4) + ".dex").getPath(), 0);
            a aVar2 = (a) aVar.f17431b;
            switch (aVar2.f17430a) {
                case 0:
                    objNewInstance = ((Constructor) aVar2.f17431b).newInstance(file2, new ZipFile(file2), dexFileLoadDex);
                    break;
                case 1:
                    objNewInstance = ((Constructor) aVar2.f17431b).newInstance(file2, file2, dexFileLoadDex);
                    break;
                default:
                    Object[] objArr2 = new Object[i10];
                    objArr2[0] = file2;
                    objArr2[1] = Boolean.FALSE;
                    objArr2[2] = file2;
                    objArr2[3] = dexFileLoadDex;
                    objNewInstance = ((Constructor) aVar2.f17431b).newInstance(objArr2);
                    break;
            }
            objArr[i11] = objNewInstance;
            i11++;
            i10 = 4;
        }
        try {
            a(obj2, "dexElements", objArr);
        } catch (NoSuchFieldException unused2) {
            a(obj2, "pathElements", objArr);
        }
    }

    public static void f(File file) throws IOException {
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            file.getPath();
        } else {
            file.getPath();
            parentFile.isDirectory();
            parentFile.isFile();
            parentFile.exists();
            parentFile.canRead();
            parentFile.canWrite();
        }
        throw new IOException("Failed to create directory " + file.getPath());
    }
}
