package com.yunpan.appmanage.util;

import android.os.ParcelFileDescriptor;
import ha.v9;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.concurrent.atomic.AtomicInteger;
import ua.i1;
import w.r3;
import x9.w3;

/* loaded from: classes.dex */
public final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4089a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4090b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4091c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f4092d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4093e;

    public /* synthetic */ p(Object obj, Object obj2, Object obj3, Object obj4, int i10) {
        this.f4089a = i10;
        this.f4093e = obj;
        this.f4090b = obj2;
        this.f4091c = obj3;
        this.f4092d = obj4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x020c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01fd A[Catch: all -> 0x01fb, TryCatch #17 {all -> 0x01fb, blocks: (B:89:0x01e9, B:97:0x0207, B:98:0x020b, B:106:0x0247, B:94:0x01fd, B:99:0x020c, B:100:0x022a), top: B:119:0x01e9, inners: #2 }] */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:116:? -> B:48:0x0176). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void a() throws Throwable {
        ParcelFileDescriptor parcelFileDescriptor;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        ?? bufferedOutputStream;
        ParcelFileDescriptor parcelFileDescriptor2;
        ParcelFileDescriptor parcelFileDescriptorOpenFileRead;
        FileInputStream fileInputStream3;
        FileInputStream fileInputStream4;
        String message;
        ParcelFileDescriptor parcelFileDescriptor3;
        ParcelFileDescriptor parcelFileDescriptorOpenFileWrite;
        FileInputStream fileInputStream5;
        FileInputStream fileInputStream6;
        ba.i iVar = (ba.i) this.f4093e;
        if (((ja.b) iVar.f2702e).l) {
            ((AtomicInteger) iVar.f2701d).decrementAndGet();
            return;
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                try {
                    parcelFileDescriptorOpenFileRead = fa.a.f5646a.f5651b.openFileRead(((File) this.f4090b).getPath());
                } catch (Throwable th2) {
                    th = th2;
                    parcelFileDescriptor = null;
                    fileInputStream = null;
                    fileInputStream3 = null;
                    bufferedOutputStream = null;
                    parcelFileDescriptor2 = null;
                    q4.a.e(bufferedInputStream);
                    q4.a.e(bufferedOutputStream);
                    q4.a.e(fileInputStream3);
                    q4.a.e(fileInputStream);
                    q4.a.e(parcelFileDescriptor2);
                    q4.a.e(parcelFileDescriptor);
                    throw th;
                }
            } catch (Exception unused) {
                parcelFileDescriptorOpenFileRead = fa.a.f5646a.f5651b.openFileRead(((File) this.f4090b).getPath());
            }
            parcelFileDescriptor3 = parcelFileDescriptorOpenFileRead;
        } catch (Exception e7) {
            e = e7;
            parcelFileDescriptor = null;
            fileInputStream = null;
            fileInputStream2 = null;
            bufferedOutputStream = null;
            parcelFileDescriptor2 = null;
            try {
                e.getMessage();
                message = e.getMessage();
                if (message.contains("File name too long")) {
                    message = "文件名太长";
                } else if (message.contains("Permission denied")) {
                    message = "无权限";
                }
                synchronized (((r) this.f4092d)) {
                    ((r) this.f4092d).f4095a.add(new w3(((File) this.f4090b).getName(), ((File) this.f4090b).getPath(), message));
                }
                q4.a.e(bufferedInputStream);
                fileInputStream4 = fileInputStream2;
                q4.a.e(bufferedOutputStream);
                q4.a.e(fileInputStream4);
                q4.a.e(fileInputStream);
                q4.a.e(parcelFileDescriptor2);
                q4.a.e(parcelFileDescriptor);
                ((ba.i) this.f4093e).c(0L);
                ((AtomicInteger) ((ba.i) this.f4093e).f2701d).decrementAndGet();
                return;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream3 = fileInputStream2;
                q4.a.e(bufferedInputStream);
                q4.a.e(bufferedOutputStream);
                q4.a.e(fileInputStream3);
                q4.a.e(fileInputStream);
                q4.a.e(parcelFileDescriptor2);
                q4.a.e(parcelFileDescriptor);
                throw th;
            }
        }
        try {
            try {
                parcelFileDescriptorOpenFileWrite = fa.a.f5646a.f5651b.openFileWrite(((File) this.f4091c).getPath());
            } catch (Exception unused2) {
                parcelFileDescriptorOpenFileWrite = fa.a.f5646a.f5651b.openFileWrite(((File) this.f4091c).getPath());
            } catch (Throwable th4) {
                th = th4;
                parcelFileDescriptor = null;
                fileInputStream = null;
                fileInputStream3 = null;
                bufferedOutputStream = null;
                parcelFileDescriptor2 = parcelFileDescriptor3;
                q4.a.e(bufferedInputStream);
                q4.a.e(bufferedOutputStream);
                q4.a.e(fileInputStream3);
                q4.a.e(fileInputStream);
                q4.a.e(parcelFileDescriptor2);
                q4.a.e(parcelFileDescriptor);
                throw th;
            }
            parcelFileDescriptor = parcelFileDescriptorOpenFileWrite;
            try {
                fileInputStream = new FileInputStream(parcelFileDescriptor3.getFileDescriptor());
            } catch (Exception e10) {
                e = e10;
                parcelFileDescriptor2 = parcelFileDescriptor3;
                fileInputStream = null;
                fileInputStream6 = fileInputStream;
                bufferedOutputStream = fileInputStream6;
                fileInputStream2 = fileInputStream6;
                e.getMessage();
                message = e.getMessage();
                if (message.contains("File name too long")) {
                }
                synchronized (((r) this.f4092d)) {
                }
            } catch (Throwable th5) {
                th = th5;
                parcelFileDescriptor2 = parcelFileDescriptor3;
                fileInputStream = null;
                fileInputStream5 = fileInputStream;
                bufferedOutputStream = fileInputStream5;
                fileInputStream3 = fileInputStream5;
                q4.a.e(bufferedInputStream);
                q4.a.e(bufferedOutputStream);
                q4.a.e(fileInputStream3);
                q4.a.e(fileInputStream);
                q4.a.e(parcelFileDescriptor2);
                q4.a.e(parcelFileDescriptor);
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            parcelFileDescriptor2 = parcelFileDescriptor3;
            parcelFileDescriptor = null;
            fileInputStream = null;
            fileInputStream6 = fileInputStream;
            bufferedOutputStream = fileInputStream6;
            fileInputStream2 = fileInputStream6;
            e.getMessage();
            message = e.getMessage();
            if (message.contains("File name too long")) {
            }
            synchronized (((r) this.f4092d)) {
            }
        } catch (Throwable th6) {
            th = th6;
            parcelFileDescriptor2 = parcelFileDescriptor3;
            parcelFileDescriptor = null;
            fileInputStream = null;
            fileInputStream5 = fileInputStream;
            bufferedOutputStream = fileInputStream5;
            fileInputStream3 = fileInputStream5;
            q4.a.e(bufferedInputStream);
            q4.a.e(bufferedOutputStream);
            q4.a.e(fileInputStream3);
            q4.a.e(fileInputStream);
            q4.a.e(parcelFileDescriptor2);
            q4.a.e(parcelFileDescriptor);
            throw th;
        }
        try {
            ?? fileOutputStream = new FileOutputStream(parcelFileDescriptor.getFileDescriptor());
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(fileInputStream);
                try {
                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    try {
                        byte[] bArr = new byte[1048576];
                        loop0: while (true) {
                            int i10 = 0;
                            do {
                                int i11 = bufferedInputStream2.read(bArr);
                                if (i11 == -1) {
                                    parcelFileDescriptor2 = parcelFileDescriptor3;
                                    bufferedOutputStream.flush();
                                    q4.a.e(bufferedInputStream2);
                                    fileInputStream4 = fileOutputStream;
                                    break loop0;
                                }
                                if (((ja.b) ((ba.i) this.f4093e).f2702e).l) {
                                    throw new Exception("停止拷贝");
                                }
                                bufferedOutputStream.write(bArr, 0, i11);
                                ((ja.b) ((ba.i) this.f4093e).f2702e).f9823i.addAndGet(i11);
                                i10++;
                            } while (i10 <= 50);
                            synchronized (((ja.b) ((ba.i) this.f4093e).f2702e)) {
                                try {
                                    ((ja.b) ((ba.i) this.f4093e).f2702e).f9825k = v9.b(System.currentTimeMillis() - ((ja.b) ((ba.i) this.f4093e).f2702e).f9824j);
                                    ja.b bVar = (ja.b) ((ba.i) this.f4093e).f2702e;
                                    DecimalFormat decimalFormat = k.f4034u0;
                                    k kVar = j.f4033a;
                                    DecimalFormat decimalFormat2 = k.f4034u0;
                                    double d10 = bVar.f9823i.get();
                                    Double.isNaN(d10);
                                    double d11 = d10 * 100.0d;
                                    double d12 = ((ja.b) ((ba.i) this.f4093e).f2702e).f9822h.get();
                                    Double.isNaN(d12);
                                    bVar.f9819e = decimalFormat2.format(d11 / d12);
                                    ja.b bVar2 = (ja.b) ((ba.i) this.f4093e).f2702e;
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("均速:");
                                    parcelFileDescriptor2 = parcelFileDescriptor3;
                                    try {
                                        sb2.append(v9.a(0L, ((ja.b) ((ba.i) this.f4093e).f2702e).f9823i.get(), System.currentTimeMillis() - ((ja.b) ((ba.i) this.f4093e).f2702e).f9824j));
                                        sb2.append(" MB/s");
                                        bVar2.f9818d = sb2.toString();
                                    } catch (Throwable th7) {
                                        th = th7;
                                        throw th;
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                    throw th;
                                }
                            }
                            try {
                                ((com.yunpan.appmanage.carsdk.u) ((ba.i) this.f4093e).f2703f).sendEmptyMessage(301);
                                parcelFileDescriptor3 = parcelFileDescriptor2;
                            } catch (Exception e12) {
                                e = e12;
                                bufferedInputStream = bufferedInputStream2;
                                fileInputStream2 = fileOutputStream;
                                e.getMessage();
                                message = e.getMessage();
                                if (message.contains("File name too long")) {
                                }
                                synchronized (((r) this.f4092d)) {
                                }
                            } catch (Throwable th9) {
                                th = th9;
                                bufferedInputStream = bufferedInputStream2;
                                fileInputStream3 = fileOutputStream;
                                q4.a.e(bufferedInputStream);
                                q4.a.e(bufferedOutputStream);
                                q4.a.e(fileInputStream3);
                                q4.a.e(fileInputStream);
                                q4.a.e(parcelFileDescriptor2);
                                q4.a.e(parcelFileDescriptor);
                                throw th;
                            }
                        }
                    } catch (Exception e13) {
                        e = e13;
                        parcelFileDescriptor2 = parcelFileDescriptor3;
                    } catch (Throwable th10) {
                        th = th10;
                        parcelFileDescriptor2 = parcelFileDescriptor3;
                    }
                } catch (Exception e14) {
                    e = e14;
                    parcelFileDescriptor2 = parcelFileDescriptor3;
                    bufferedOutputStream = null;
                } catch (Throwable th11) {
                    th = th11;
                    parcelFileDescriptor2 = parcelFileDescriptor3;
                    bufferedOutputStream = null;
                }
            } catch (Exception e15) {
                e = e15;
                parcelFileDescriptor2 = parcelFileDescriptor3;
                bufferedOutputStream = null;
                fileInputStream2 = fileOutputStream;
            } catch (Throwable th12) {
                th = th12;
                parcelFileDescriptor2 = parcelFileDescriptor3;
                bufferedOutputStream = null;
                fileInputStream3 = fileOutputStream;
            }
        } catch (Exception e16) {
            e = e16;
            parcelFileDescriptor2 = parcelFileDescriptor3;
            fileInputStream6 = null;
            bufferedOutputStream = fileInputStream6;
            fileInputStream2 = fileInputStream6;
            e.getMessage();
            message = e.getMessage();
            if (message.contains("File name too long")) {
            }
            synchronized (((r) this.f4092d)) {
            }
        } catch (Throwable th13) {
            th = th13;
            parcelFileDescriptor2 = parcelFileDescriptor3;
            fileInputStream5 = null;
            bufferedOutputStream = fileInputStream5;
            fileInputStream3 = fileInputStream5;
            q4.a.e(bufferedInputStream);
            q4.a.e(bufferedOutputStream);
            q4.a.e(fileInputStream3);
            q4.a.e(fileInputStream);
            q4.a.e(parcelFileDescriptor2);
            q4.a.e(parcelFileDescriptor);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x022b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01b8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c2 A[Catch: all -> 0x01a6, Exception -> 0x01aa, TryCatch #17 {Exception -> 0x01aa, all -> 0x01a6, blocks: (B:36:0x00b8, B:38:0x00bb, B:40:0x00c2, B:42:0x00ce, B:44:0x00e4, B:45:0x00ec), top: B:131:0x00b8 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01fc A[Catch: all -> 0x01fa, TryCatch #16 {all -> 0x01fa, blocks: (B:85:0x01e8, B:101:0x0226, B:102:0x022a, B:110:0x0266, B:90:0x01fc, B:93:0x0207, B:95:0x020f, B:98:0x021c, B:103:0x022b, B:104:0x0249), top: B:125:0x01e8, inners: #2 }] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v20 */
    /* JADX WARN: Type inference failed for: r18v21 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:128:? -> B:60:0x019f). Please report as a decompilation issue!!! */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws Throwable {
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream;
        ?? r18;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        FileInputStream fileInputStream3;
        String message;
        BufferedInputStream bufferedInputStream;
        FileInputStream fileInputStream4;
        byte[] bArr;
        int i10;
        int i11;
        ja.b bVar;
        StringBuilder sb2;
        BufferedInputStream bufferedInputStream2 = null;
        int i12 = 1;
        switch (this.f4089a) {
            case 0:
                r3 r3Var = (r3) this.f4093e;
                try {
                    if (((ja.b) r3Var.f17247f).l) {
                        ((AtomicInteger) r3Var.f17246e).decrementAndGet();
                        return;
                    }
                    try {
                        fileInputStream = new FileInputStream((File) this.f4090b);
                        try {
                            fileOutputStream = new FileOutputStream((File) this.f4091c);
                        } catch (Exception unused) {
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream = new FileInputStream((File) this.f4090b);
                                } catch (Exception e7) {
                                    e = e7;
                                    fileOutputStream = null;
                                    bufferedOutputStream = null;
                                    fileInputStream2 = fileInputStream;
                                    try {
                                        e.getMessage();
                                        message = e.getMessage();
                                        if (!message.contains("File name too long")) {
                                            message = "文件名太长";
                                        } else if (message.contains("Permission denied")) {
                                            message = "无权限";
                                        } else if (message.contains("dfshfgjghjkhjkl") && ((File) this.f4091c).exists()) {
                                            message = "文件被占用";
                                        } else if (message.contains("No such file or directory")) {
                                            message = "No such file or directory";
                                        }
                                        synchronized (((q) this.f4092d)) {
                                            ((q) this.f4092d).f4094a.add(new w3(((File) this.f4090b).getName(), ((File) this.f4090b).getPath(), message));
                                        }
                                        q4.a.e(bufferedInputStream2);
                                        fileInputStream3 = fileInputStream2;
                                        q4.a.e(bufferedOutputStream);
                                        q4.a.e(fileOutputStream);
                                        q4.a.e(fileInputStream3);
                                        ((r3) this.f4093e).a(0L);
                                        ((AtomicInteger) ((r3) this.f4093e).f17246e).decrementAndGet();
                                        return;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        r18 = fileInputStream2;
                                        q4.a.e(bufferedInputStream2);
                                        q4.a.e(bufferedOutputStream);
                                        q4.a.e(fileOutputStream);
                                        q4.a.e(r18);
                                        throw th;
                                    }
                                }
                            }
                            try {
                                fileOutputStream = new FileOutputStream((File) this.f4091c);
                                PrintStream printStream = System.out;
                                ((File) this.f4090b).getAbsolutePath();
                                ((File) this.f4091c).getAbsolutePath();
                                printStream.getClass();
                                bufferedInputStream = new BufferedInputStream(fileInputStream);
                                try {
                                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                                    try {
                                        bArr = new byte[1048576];
                                        while (true) {
                                            i10 = 0;
                                            do {
                                                i11 = bufferedInputStream.read(bArr);
                                                if (i11 != -1) {
                                                }
                                            } while (i10 <= 50);
                                            synchronized (((ja.b) ((r3) this.f4093e).f17247f)) {
                                            }
                                            fileInputStream = fileInputStream4;
                                            i12 = 1;
                                        }
                                    } catch (Exception e10) {
                                        e = e10;
                                        fileInputStream4 = fileInputStream;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        fileInputStream4 = fileInputStream;
                                    }
                                } catch (Exception e11) {
                                    e = e11;
                                    fileInputStream4 = fileInputStream;
                                    bufferedOutputStream = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                    fileInputStream4 = fileInputStream;
                                    bufferedOutputStream = null;
                                }
                            } catch (Exception unused2) {
                                throw new Exception("文件被占用，请稍后再试");
                            }
                        }
                    } catch (Exception unused3) {
                        fileInputStream = null;
                    } catch (Throwable th5) {
                        th = th5;
                        fileOutputStream = null;
                        bufferedOutputStream = null;
                        r18 = 0;
                        q4.a.e(bufferedInputStream2);
                        q4.a.e(bufferedOutputStream);
                        q4.a.e(fileOutputStream);
                        q4.a.e(r18);
                        throw th;
                    }
                    try {
                        PrintStream printStream2 = System.out;
                        ((File) this.f4090b).getAbsolutePath();
                        ((File) this.f4091c).getAbsolutePath();
                        printStream2.getClass();
                        bufferedInputStream = new BufferedInputStream(fileInputStream);
                        bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                        bArr = new byte[1048576];
                        while (true) {
                            i10 = 0;
                            do {
                                i11 = bufferedInputStream.read(bArr);
                                if (i11 != -1) {
                                    fileInputStream3 = fileInputStream;
                                    bufferedOutputStream.flush();
                                    q4.a.e(bufferedInputStream);
                                } else {
                                    if (((ja.b) ((r3) this.f4093e).f17247f).l) {
                                        throw new Exception("停止拷贝");
                                    }
                                    bufferedOutputStream.write(bArr, 0, i11);
                                    ((ja.b) ((r3) this.f4093e).f17247f).f9823i.addAndGet(i11);
                                    i10 += i12;
                                }
                            } while (i10 <= 50);
                            synchronized (((ja.b) ((r3) this.f4093e).f17247f)) {
                                try {
                                    ((ja.b) ((r3) this.f4093e).f17247f).f9825k = v9.b(System.currentTimeMillis() - ((ja.b) ((r3) this.f4093e).f17247f).f9824j);
                                    ja.b bVar2 = (ja.b) ((r3) this.f4093e).f17247f;
                                    DecimalFormat decimalFormat = k.f4034u0;
                                    k kVar = j.f4033a;
                                    DecimalFormat decimalFormat2 = k.f4034u0;
                                    double d10 = bVar2.f9823i.get();
                                    Double.isNaN(d10);
                                    double d11 = d10 * 100.0d;
                                    double d12 = ((ja.b) ((r3) this.f4093e).f17247f).f9822h.get();
                                    Double.isNaN(d12);
                                    bVar2.f9819e = decimalFormat2.format(d11 / d12);
                                    bVar = (ja.b) ((r3) this.f4093e).f17247f;
                                    sb2 = new StringBuilder();
                                    sb2.append("均速:");
                                    fileInputStream4 = fileInputStream;
                                } catch (Throwable th6) {
                                    th = th6;
                                    throw th;
                                }
                                try {
                                    sb2.append(v9.a(0L, ((ja.b) ((r3) this.f4093e).f17247f).f9823i.get(), System.currentTimeMillis() - ((ja.b) ((r3) this.f4093e).f17247f).f9824j));
                                    sb2.append(" MB/s");
                                    bVar.f9818d = sb2.toString();
                                } catch (Throwable th7) {
                                    th = th7;
                                    throw th;
                                }
                            }
                            try {
                                ((com.yunpan.appmanage.carsdk.u) ((r3) this.f4093e).f17248g).sendEmptyMessage(301);
                                fileInputStream = fileInputStream4;
                                i12 = 1;
                            } catch (Exception e12) {
                                e = e12;
                                bufferedInputStream2 = bufferedInputStream;
                                fileInputStream2 = fileInputStream4;
                                e.getMessage();
                                message = e.getMessage();
                                if (!message.contains("File name too long")) {
                                }
                                synchronized (((q) this.f4092d)) {
                                }
                            } catch (Throwable th8) {
                                th = th8;
                                bufferedInputStream2 = bufferedInputStream;
                                r18 = fileInputStream4;
                                q4.a.e(bufferedInputStream2);
                                q4.a.e(bufferedOutputStream);
                                q4.a.e(fileOutputStream);
                                q4.a.e(r18);
                                throw th;
                            }
                        }
                    } catch (Exception e13) {
                        e = e13;
                        fileInputStream2 = fileInputStream;
                        bufferedOutputStream = null;
                    } catch (Throwable th9) {
                        th = th9;
                        r18 = fileInputStream;
                        bufferedOutputStream = null;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    fileOutputStream = null;
                    bufferedOutputStream = null;
                    r18 = r3Var;
                }
                break;
            case 1:
                a();
                return;
            default:
                v.d dVar = (v.d) this.f4090b;
                if (dVar != null) {
                    i1 i1Var = (i1) this.f4093e;
                    ((v.e) i1Var.f15727b).B = true;
                    dVar.f16197b.c(false);
                    ((v.e) i1Var.f15727b).B = false;
                }
                v.m mVar = (v.m) this.f4091c;
                if (mVar.isEnabled() && mVar.hasSubMenu()) {
                    ((v.k) this.f4092d).q(mVar, null, 4);
                    return;
                }
                return;
        }
    }
}
