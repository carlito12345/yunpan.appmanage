package w3;

import android.content.SharedPreferences;
import com.yunpan.appmanage.base.AppStart;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* loaded from: classes.dex */
public final class e implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final File f17435a;

    /* renamed from: b, reason: collision with root package name */
    public final long f17436b;

    /* renamed from: c, reason: collision with root package name */
    public final File f17437c;

    /* renamed from: d, reason: collision with root package name */
    public final RandomAccessFile f17438d;

    /* renamed from: e, reason: collision with root package name */
    public final FileChannel f17439e;

    /* renamed from: f, reason: collision with root package name */
    public final FileLock f17440f;

    public e(File file, File file2) throws Throwable {
        file.getPath();
        file2.getPath();
        this.f17435a = file;
        this.f17437c = file2;
        this.f17436b = A(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.f17438d = randomAccessFile;
        try {
            try {
                FileChannel channel = randomAccessFile.getChannel();
                this.f17439e = channel;
                try {
                    file3.getPath();
                    this.f17440f = channel.lock();
                    file3.getPath();
                } catch (IOException e7) {
                    e = e7;
                    try {
                        this.f17439e.close();
                    } catch (IOException unused) {
                    }
                    throw e;
                } catch (Error e10) {
                    e = e10;
                    this.f17439e.close();
                    throw e;
                } catch (RuntimeException e11) {
                    e = e11;
                    this.f17439e.close();
                    throw e;
                }
            } catch (IOException e12) {
                e = e12;
                try {
                    this.f17438d.close();
                } catch (IOException unused2) {
                }
                throw e;
            }
        } catch (Error e13) {
            e = e13;
            this.f17438d.close();
            throw e;
        } catch (RuntimeException e14) {
            e = e14;
            this.f17438d.close();
            throw e;
        }
    }

    public static long A(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            f fVarA = g.a(randomAccessFile);
            CRC32 crc32 = new CRC32();
            long j10 = fVarA.f17442b;
            randomAccessFile.seek(fVarA.f17441a);
            byte[] bArr = new byte[16384];
            int i10 = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j10));
            while (i10 != -1) {
                crc32.update(bArr, 0, i10);
                j10 -= i10;
                if (j10 == 0) {
                    break;
                }
                i10 = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j10));
            }
            long value = crc32.getValue();
            randomAccessFile.close();
            return value == -1 ? value - 1 : value;
        } catch (Throwable th2) {
            randomAccessFile.close();
            throw th2;
        }
    }

    public static void M(AppStart appStart, long j10, long j11, ArrayList arrayList) {
        SharedPreferences.Editor editorEdit = appStart.getSharedPreferences("multidex.version", 4).edit();
        editorEdit.putLong("timestamp", j10);
        editorEdit.putLong("crc", j11);
        editorEdit.putInt("dex.number", arrayList.size() + 1);
        Iterator it = arrayList.iterator();
        int i10 = 2;
        while (it.hasNext()) {
            d dVar = (d) it.next();
            editorEdit.putLong(da.b.a(i10, "dex.crc."), dVar.f17434a);
            editorEdit.putLong("dex.time." + i10, dVar.lastModified());
            i10++;
        }
        editorEdit.commit();
    }

    public static void r(ZipFile zipFile, ZipEntry zipEntry, d dVar, String str) throws IOException {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File fileCreateTempFile = File.createTempFile(da.b.c("tmp-", str), ".zip", dVar.getParentFile());
        fileCreateTempFile.getPath();
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(fileCreateTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                for (int i10 = inputStream.read(bArr); i10 != -1; i10 = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, i10);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (!fileCreateTempFile.setReadOnly()) {
                    throw new IOException("Failed to mark readonly \"" + fileCreateTempFile.getAbsolutePath() + "\" (tmp of \"" + dVar.getAbsolutePath() + "\")");
                }
                dVar.getPath();
                if (fileCreateTempFile.renameTo(dVar)) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                    fileCreateTempFile.delete();
                    return;
                }
                throw new IOException("Failed to rename \"" + fileCreateTempFile.getAbsolutePath() + "\" to \"" + dVar.getAbsolutePath() + "\"");
            } catch (Throwable th2) {
                zipOutputStream.close();
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
            fileCreateTempFile.delete();
            throw th3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ArrayList J(AppStart appStart, boolean z) throws IOException {
        ArrayList arrayListL;
        ArrayList arrayListK;
        File file = this.f17435a;
        file.getPath();
        if (!this.f17440f.isValid()) {
            throw new IllegalStateException("MultiDexExtractor was closed");
        }
        if (!z) {
            SharedPreferences sharedPreferences = appStart.getSharedPreferences("multidex.version", 4);
            long j10 = sharedPreferences.getLong("timestamp", -1L);
            long jLastModified = file.lastModified();
            if (jLastModified == -1) {
                jLastModified--;
            }
            if (j10 == jLastModified && sharedPreferences.getLong("crc", -1L) == this.f17436b) {
                try {
                    arrayListK = K(appStart);
                } catch (IOException unused) {
                    arrayListL = L();
                    long jLastModified2 = file.lastModified();
                    if (jLastModified2 == -1) {
                        jLastModified2--;
                    }
                    M(appStart, jLastModified2, this.f17436b, arrayListL);
                }
            } else {
                arrayListL = L();
                long jLastModified3 = file.lastModified();
                if (jLastModified3 == -1) {
                    jLastModified3--;
                }
                M(appStart, jLastModified3, this.f17436b, arrayListL);
            }
            arrayListK = arrayListL;
        }
        arrayListK.size();
        return arrayListK;
    }

    public final ArrayList K(AppStart appStart) throws IOException {
        String str = this.f17435a.getName() + ".classes";
        SharedPreferences sharedPreferences = appStart.getSharedPreferences("multidex.version", 4);
        int i10 = sharedPreferences.getInt("dex.number", 1);
        ArrayList arrayList = new ArrayList(i10 - 1);
        for (int i11 = 2; i11 <= i10; i11++) {
            d dVar = new d(this.f17437c, str + i11 + ".zip");
            if (!dVar.isFile()) {
                throw new IOException("Missing extracted secondary dex file '" + dVar.getPath() + "'");
            }
            dVar.f17434a = A(dVar);
            long j10 = sharedPreferences.getLong("dex.crc." + i11, -1L);
            long j11 = sharedPreferences.getLong("dex.time." + i11, -1L);
            long jLastModified = dVar.lastModified();
            if (j11 != jLastModified || j10 != dVar.f17434a) {
                throw new IOException("Invalid extracted dex: " + dVar + " (key \"\"), expected modification time: " + j11 + ", modification time: " + jLastModified + ", expected crc: " + j10 + ", file crc: " + dVar.f17434a);
            }
            arrayList.add(dVar);
        }
        return arrayList;
    }

    public final ArrayList L() throws IOException {
        StringBuilder sb2 = new StringBuilder();
        File file = this.f17435a;
        sb2.append(file.getName());
        sb2.append(".classes");
        String string = sb2.toString();
        c cVar = new c();
        File file2 = this.f17437c;
        File[] fileArrListFiles = file2.listFiles(cVar);
        if (fileArrListFiles == null) {
            file2.getPath();
        } else {
            for (File file3 : fileArrListFiles) {
                file3.getPath();
                file3.length();
                if (file3.delete()) {
                    file3.getPath();
                } else {
                    file3.getPath();
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        try {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("classes");
            int i10 = 2;
            sb3.append(2);
            sb3.append(".dex");
            ZipEntry entry = zipFile.getEntry(sb3.toString());
            while (entry != null) {
                d dVar = new d(file2, string + i10 + ".zip");
                arrayList.add(dVar);
                dVar.toString();
                int i11 = 0;
                boolean z = false;
                while (i11 < 3 && !z) {
                    i11++;
                    r(zipFile, entry, dVar, string);
                    try {
                        dVar.f17434a = A(dVar);
                        z = true;
                    } catch (IOException unused) {
                        dVar.getAbsolutePath();
                        z = false;
                    }
                    dVar.getAbsolutePath();
                    dVar.length();
                    if (!z) {
                        dVar.delete();
                        if (dVar.exists()) {
                            dVar.getPath();
                        }
                    }
                }
                if (!z) {
                    throw new IOException("Could not create zip file " + dVar.getAbsolutePath() + " for secondary dex (" + i10 + ")");
                }
                i10++;
                entry = zipFile.getEntry("classes" + i10 + ".dex");
            }
            try {
                zipFile.close();
            } catch (IOException unused2) {
            }
            return arrayList;
        } catch (Throwable th2) {
            try {
                zipFile.close();
            } catch (IOException unused3) {
            }
            throw th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f17440f.release();
        this.f17439e.close();
        this.f17438d.close();
    }
}
