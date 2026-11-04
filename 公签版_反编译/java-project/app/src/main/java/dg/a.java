package dg;

import a2.g1;
import ag.f;
import ag.g;
import ag.h;
import ag.l;
import android.os.Handler;
import com.bumptech.glide.manager.s;
import eg.c;
import eg.d;
import g.b;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import m7.e;
import yf.j;
import yf.k;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public boolean f4637a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4638b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4639c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f4640d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f4641e;

    /* renamed from: f, reason: collision with root package name */
    public Object f4642f;

    public a(l lVar, char[] cArr, e eVar, s sVar) {
        this.f4638b = (cg.a) sVar.f3412c;
        this.f4637a = sVar.f3411b;
        this.f4639c = (ExecutorService) sVar.f3413d;
        this.f4640d = lVar;
        this.f4641e = cArr;
    }

    public boolean a(Method method, Class cls) {
        StringBuilder sb2 = (StringBuilder) this.f4641e;
        sb2.setLength(0);
        sb2.append(method.getName());
        sb2.append('>');
        sb2.append(cls.getName());
        String string = sb2.toString();
        Class<?> declaringClass = method.getDeclaringClass();
        HashMap map = (HashMap) this.f4640d;
        Class cls2 = (Class) map.put(string, declaringClass);
        if (cls2 == null || cls2.isAssignableFrom(declaringClass)) {
            return true;
        }
        map.put(string, cls2);
        return false;
    }

    public void b(g1 g1Var, cg.a aVar) throws IOException {
        try {
            j jVarE = e((h) g1Var.f175b);
            try {
                Iterator it = ((l) this.f4640d).f698b.f665a.iterator();
                while (it.hasNext()) {
                    f fVar = (f) it.next();
                    if (fVar.f657k.startsWith("__MACOSX")) {
                        aVar.a(fVar.f655i);
                    } else {
                        ((mg.a) this.f4642f).r(fVar);
                        c(jVarE, fVar, (String) g1Var.f176c, aVar, new byte[4096]);
                        ((cg.a) this.f4638b).getClass();
                    }
                }
                jVarE.close();
            } catch (Throwable th2) {
                try {
                    jVarE.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        } finally {
            mg.a aVar2 = (mg.a) this.f4642f;
            if (aVar2 != null) {
                aVar2.close();
            }
        }
    }

    public void c(j jVar, f fVar, String str, cg.a aVar, byte[] bArr) throws Exception {
        FileOutputStream fileOutputStream;
        byte[] bArr2 = fVar.f677x;
        boolean zG = (bArr2 == null || bArr2.length < 4) ? false : c.g(bArr2[3], 5);
        String str2 = d.f4973a;
        if (!str.endsWith(str2)) {
            str = b.j(str, str2);
        }
        File file = new File(str, fVar.f657k.replaceAll(":\\\\", "_").replaceAll("[/\\\\]", Matcher.quoteReplacement(str2)));
        file.getAbsolutePath();
        aVar.getClass();
        String canonicalPath = file.getCanonicalPath();
        if (file.isDirectory() && !canonicalPath.endsWith(str2)) {
            canonicalPath = b.j(canonicalPath, str2);
        }
        String canonicalPath2 = new File(str).getCanonicalPath();
        if (!canonicalPath2.endsWith(str2)) {
            canonicalPath2 = b.j(canonicalPath2, str2);
        }
        if (!canonicalPath.startsWith(canonicalPath2)) {
            throw new wf.a("illegal file name that breaks out of the target directory: " + fVar.f657k);
        }
        if (c.g(fVar.f650d[0], 6)) {
            throw new wf.a(b.l(fVar.f657k, " is encrypted with Strong Encryption. Zip4j does not support Strong Encryption, as this is patented.", new StringBuilder("Entry with name ")));
        }
        g gVarA = jVar.A(fVar, false);
        if (gVarA == null) {
            throw new wf.a("Could not read corresponding local file header for file header: " + fVar.f657k);
        }
        if (!fVar.f657k.equals(gVarA.f657k)) {
            throw new wf.a("File header and local file header mismatch");
        }
        if (fVar.f663t) {
            if (!file.exists() && !file.mkdirs()) {
                throw new wf.a("Could not create directory: " + file);
            }
        } else if (zG) {
            int i10 = (int) fVar.f655i;
            byte[] bArr3 = new byte[i10];
            if (jVar.read(bArr3, 0, i10) != i10) {
                throw new wf.a("Could not read complete entry");
            }
            aVar.a(i10);
            String str3 = new String(bArr3);
            if (!file.getParentFile().exists() && !file.getParentFile().mkdirs()) {
                throw new wf.a("Could not create parent directories");
            }
            try {
                Path path = Paths.get(str3, new String[0]);
                if (file.exists() && !file.delete()) {
                    throw new wf.a("Could not delete existing symlink " + file);
                }
                Files.createSymbolicLink(file.toPath(), path, new FileAttribute[0]);
            } catch (NoSuchMethodError unused) {
                fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write(str3.getBytes());
                    fileOutputStream.close();
                } finally {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
        } else {
            if (!file.getParentFile().exists() && !file.getParentFile().mkdirs()) {
                throw new wf.a("Unable to create parent directories: " + file.getParentFile());
            }
            try {
                fileOutputStream = new FileOutputStream(file);
                while (true) {
                    try {
                        int i11 = jVar.read(bArr, 0, bArr.length);
                        if (i11 == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, i11);
                        aVar.a(i11);
                        ((cg.a) this.f4638b).getClass();
                    } catch (Throwable th3) {
                        try {
                        } catch (Throwable th22) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th22);
                            } catch (Exception unused3) {
                            }
                        }
                        throw th3;
                    }
                }
                fileOutputStream.close();
            } catch (Exception e7) {
                if (file.exists()) {
                    file.delete();
                }
                throw e7;
            }
        }
        if (zG) {
            return;
        }
        try {
            Path path2 = file.toPath();
            c.m(path2, fVar.f677x);
            long j10 = fVar.f652f;
            if (j10 <= 0 || !Files.exists(path2, new LinkOption[0])) {
                return;
            }
            try {
                Files.setLastModifiedTime(path2, FileTime.fromMillis(c.c(j10)));
            } catch (Exception unused4) {
            }
        } catch (NoSuchMethodError unused5) {
            file.setLastModified(c.c(fVar.f652f));
        }
    }

    public void d(g1 g1Var, cg.a aVar) throws wf.a {
        try {
            b(g1Var, aVar);
            aVar.f3245e = 1;
            aVar.f3244d = 100;
            aVar.f3241a = 1;
        } catch (wf.a e7) {
            aVar.f3245e = 3;
            aVar.f3246f = e7;
            aVar.f3241a = 1;
            throw e7;
        } catch (Exception e10) {
            aVar.f3245e = 3;
            aVar.f3246f = e10;
            aVar.f3241a = 1;
            throw new wf.a(e10);
        }
    }

    public j e(h hVar) {
        ArrayList arrayList;
        l lVar = (l) this.f4640d;
        this.f4642f = lVar.f703g.getName().endsWith(".zip.001") ? new yf.f(lVar.f703g) : new k(lVar.f703g, lVar.f702f, lVar.f699c.f666c);
        ag.c cVar = lVar.f698b;
        f fVar = (cVar == null || (arrayList = cVar.f665a) == null || arrayList.size() == 0) ? null : (f) lVar.f698b.f665a.get(0);
        if (fVar != null) {
            ((mg.a) this.f4642f).r(fVar);
        }
        return new j((mg.a) this.f4642f, (char[]) this.f4641e, hVar);
    }

    public a(Handler handler, vb.g gVar) {
        this.f4637a = false;
        this.f4641e = handler;
        this.f4638b = new ArrayList();
        this.f4639c = new ArrayList();
        this.f4640d = new ReentrantLock(true);
        this.f4642f = gVar;
    }

    public a() {
        this.f4638b = new ArrayList();
        this.f4639c = new HashMap();
        this.f4640d = new HashMap();
        this.f4641e = new StringBuilder(128);
    }
}
