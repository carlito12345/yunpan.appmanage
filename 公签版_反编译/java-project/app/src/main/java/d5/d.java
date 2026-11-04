package d5;

import android.os.Build;
import android.os.StrictMode;
import androidx.room.i;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class d implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final File f4473a;

    /* renamed from: b, reason: collision with root package name */
    public final File f4474b;

    /* renamed from: c, reason: collision with root package name */
    public final File f4475c;

    /* renamed from: d, reason: collision with root package name */
    public final File f4476d;

    /* renamed from: f, reason: collision with root package name */
    public final long f4478f;

    /* renamed from: i, reason: collision with root package name */
    public BufferedWriter f4481i;

    /* renamed from: k, reason: collision with root package name */
    public int f4483k;

    /* renamed from: h, reason: collision with root package name */
    public long f4480h = 0;

    /* renamed from: j, reason: collision with root package name */
    public final LinkedHashMap f4482j = new LinkedHashMap(0, 0.75f, true);
    public long l = 0;

    /* renamed from: m, reason: collision with root package name */
    public final ThreadPoolExecutor f4484m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b());

    /* renamed from: n, reason: collision with root package name */
    public final a f4485n = new a(this);

    /* renamed from: e, reason: collision with root package name */
    public final int f4477e = 1;

    /* renamed from: g, reason: collision with root package name */
    public final int f4479g = 1;

    public d(File file, long j10) {
        this.f4473a = file;
        this.f4474b = new File(file, "journal");
        this.f4475c = new File(file, "journal.tmp");
        this.f4476d = new File(file, "journal.bkp");
        this.f4478f = j10;
    }

    public static void A(BufferedWriter bufferedWriter) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void J(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static void L(BufferedWriter bufferedWriter) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static d O(File file, long j10) throws IOException {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                T(file2, file3, false);
            }
        }
        d dVar = new d(file, j10);
        if (dVar.f4474b.exists()) {
            try {
                dVar.Q();
                dVar.P();
                return dVar;
            } catch (IOException e7) {
                PrintStream printStream = System.out;
                if (file != null) {
                    file.toString();
                }
                e7.getMessage();
                printStream.getClass();
                dVar.close();
                g.a(dVar.f4473a);
            }
        }
        file.mkdirs();
        d dVar2 = new d(file, j10);
        dVar2.S();
        return dVar2;
    }

    public static void T(File file, File file2, boolean z) throws IOException {
        if (z) {
            J(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public static void r(d dVar, i iVar, boolean z) {
        synchronized (dVar) {
            c cVar = (c) iVar.f2405b;
            if (cVar.f4471f != iVar) {
                throw new IllegalStateException();
            }
            if (z && !cVar.f4470e) {
                for (int i10 = 0; i10 < dVar.f4479g; i10++) {
                    if (!((boolean[]) iVar.f2406c)[i10]) {
                        iVar.c();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                    }
                    if (!cVar.f4469d[i10].exists()) {
                        iVar.c();
                        return;
                    }
                }
            }
            for (int i11 = 0; i11 < dVar.f4479g; i11++) {
                File file = cVar.f4469d[i11];
                if (!z) {
                    J(file);
                } else if (file.exists()) {
                    File file2 = cVar.f4468c[i11];
                    file.renameTo(file2);
                    long j10 = cVar.f4467b[i11];
                    long length = file2.length();
                    cVar.f4467b[i11] = length;
                    dVar.f4480h = (dVar.f4480h - j10) + length;
                }
            }
            dVar.f4483k++;
            cVar.f4471f = null;
            if (cVar.f4470e || z) {
                cVar.f4470e = true;
                dVar.f4481i.append((CharSequence) "CLEAN");
                dVar.f4481i.append(' ');
                dVar.f4481i.append((CharSequence) cVar.f4466a);
                dVar.f4481i.append((CharSequence) cVar.a());
                dVar.f4481i.append('\n');
                if (z) {
                    dVar.l++;
                }
            } else {
                dVar.f4482j.remove(cVar.f4466a);
                dVar.f4481i.append((CharSequence) "REMOVE");
                dVar.f4481i.append(' ');
                dVar.f4481i.append((CharSequence) cVar.f4466a);
                dVar.f4481i.append('\n');
            }
            L(dVar.f4481i);
            if (dVar.f4480h > dVar.f4478f || dVar.N()) {
                dVar.f4484m.submit(dVar.f4485n);
            }
        }
    }

    public final i K(String str) {
        synchronized (this) {
            try {
                if (this.f4481i == null) {
                    throw new IllegalStateException("cache is closed");
                }
                c cVar = (c) this.f4482j.get(str);
                if (cVar == null) {
                    cVar = new c(this, str);
                    this.f4482j.put(str, cVar);
                } else if (cVar.f4471f != null) {
                    return null;
                }
                i iVar = new i(this, cVar);
                cVar.f4471f = iVar;
                this.f4481i.append((CharSequence) "DIRTY");
                this.f4481i.append(' ');
                this.f4481i.append((CharSequence) str);
                this.f4481i.append('\n');
                L(this.f4481i);
                return iVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final synchronized a1.i M(String str) {
        if (this.f4481i == null) {
            throw new IllegalStateException("cache is closed");
        }
        c cVar = (c) this.f4482j.get(str);
        if (cVar == null) {
            return null;
        }
        if (!cVar.f4470e) {
            return null;
        }
        for (File file : cVar.f4468c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f4483k++;
        this.f4481i.append((CharSequence) "READ");
        this.f4481i.append(' ');
        this.f4481i.append((CharSequence) str);
        this.f4481i.append('\n');
        if (N()) {
            this.f4484m.submit(this.f4485n);
        }
        return new a1.i(17, cVar.f4468c);
    }

    public final boolean N() {
        int i10 = this.f4483k;
        return i10 >= 2000 && i10 >= this.f4482j.size();
    }

    public final void P() throws IOException {
        J(this.f4475c);
        Iterator it = this.f4482j.values().iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            i iVar = cVar.f4471f;
            int i10 = this.f4479g;
            int i11 = 0;
            if (iVar == null) {
                while (i11 < i10) {
                    this.f4480h += cVar.f4467b[i11];
                    i11++;
                }
            } else {
                cVar.f4471f = null;
                while (i11 < i10) {
                    J(cVar.f4468c[i11]);
                    J(cVar.f4469d[i11]);
                    i11++;
                }
                it.remove();
            }
        }
    }

    public final void Q() {
        File file = this.f4474b;
        FileInputStream fileInputStream = new FileInputStream(file);
        Charset charset = g.f4491a;
        f fVar = new f(fileInputStream);
        try {
            String strR = fVar.r();
            String strR2 = fVar.r();
            String strR3 = fVar.r();
            String strR4 = fVar.r();
            String strR5 = fVar.r();
            if (!"libcore.io.DiskLruCache".equals(strR) || !"1".equals(strR2) || !Integer.toString(this.f4477e).equals(strR3) || !Integer.toString(this.f4479g).equals(strR4) || !"".equals(strR5)) {
                throw new IOException("unexpected journal header: [" + strR + ", " + strR2 + ", " + strR4 + ", " + strR5 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    R(fVar.r());
                    i10++;
                } catch (EOFException unused) {
                    this.f4483k = i10 - this.f4482j.size();
                    if (fVar.f4490d == -1) {
                        S();
                    } else {
                        this.f4481i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), g.f4491a));
                    }
                    try {
                        fVar.close();
                        return;
                    } catch (RuntimeException e7) {
                        throw e7;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th2) {
            try {
                fVar.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused3) {
            }
            throw th2;
        }
    }

    public final void R(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i10 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i10);
        LinkedHashMap linkedHashMap = this.f4482j;
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i10);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iIndexOf2);
        }
        c cVar = (c) linkedHashMap.get(strSubstring);
        if (cVar == null) {
            cVar = new c(this, strSubstring);
            linkedHashMap.put(strSubstring, cVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                cVar.f4471f = new i(this, cVar);
                return;
            } else {
                if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        cVar.f4470e = true;
        cVar.f4471f = null;
        if (strArrSplit.length != cVar.f4472g.f4479g) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
        }
        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
            try {
                cVar.f4467b[i11] = Long.parseLong(strArrSplit[i11]);
            } catch (NumberFormatException unused) {
                throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
            }
        }
    }

    public final synchronized void S() {
        try {
            BufferedWriter bufferedWriter = this.f4481i;
            if (bufferedWriter != null) {
                A(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4475c), g.f4491a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write(SignParameters.NEW_LINE);
                bufferedWriter2.write("1");
                bufferedWriter2.write(SignParameters.NEW_LINE);
                bufferedWriter2.write(Integer.toString(this.f4477e));
                bufferedWriter2.write(SignParameters.NEW_LINE);
                bufferedWriter2.write(Integer.toString(this.f4479g));
                bufferedWriter2.write(SignParameters.NEW_LINE);
                bufferedWriter2.write(SignParameters.NEW_LINE);
                for (c cVar : this.f4482j.values()) {
                    if (cVar.f4471f != null) {
                        bufferedWriter2.write("DIRTY " + cVar.f4466a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + cVar.f4466a + cVar.a() + '\n');
                    }
                }
                A(bufferedWriter2);
                if (this.f4474b.exists()) {
                    T(this.f4474b, this.f4476d, true);
                }
                T(this.f4475c, this.f4474b, false);
                this.f4476d.delete();
                this.f4481i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4474b, true), g.f4491a));
            } catch (Throwable th2) {
                A(bufferedWriter2);
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public final void U() {
        while (this.f4480h > this.f4478f) {
            String str = (String) ((Map.Entry) this.f4482j.entrySet().iterator().next()).getKey();
            synchronized (this) {
                try {
                    if (this.f4481i == null) {
                        throw new IllegalStateException("cache is closed");
                    }
                    c cVar = (c) this.f4482j.get(str);
                    if (cVar != null && cVar.f4471f == null) {
                        for (int i10 = 0; i10 < this.f4479g; i10++) {
                            File file = cVar.f4468c[i10];
                            if (file.exists() && !file.delete()) {
                                throw new IOException("failed to delete " + file);
                            }
                            long j10 = this.f4480h;
                            long[] jArr = cVar.f4467b;
                            this.f4480h = j10 - jArr[i10];
                            jArr[i10] = 0;
                        }
                        this.f4483k++;
                        this.f4481i.append((CharSequence) "REMOVE");
                        this.f4481i.append(' ');
                        this.f4481i.append((CharSequence) str);
                        this.f4481i.append('\n');
                        this.f4482j.remove(str);
                        if (N()) {
                            this.f4484m.submit(this.f4485n);
                        }
                    }
                } finally {
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f4481i == null) {
                return;
            }
            Iterator it = new ArrayList(this.f4482j.values()).iterator();
            while (it.hasNext()) {
                i iVar = ((c) it.next()).f4471f;
                if (iVar != null) {
                    iVar.c();
                }
            }
            U();
            A(this.f4481i);
            this.f4481i = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
