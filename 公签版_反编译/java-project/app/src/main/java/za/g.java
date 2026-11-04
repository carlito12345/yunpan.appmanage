package za;

import a2.w0;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import fa.b0;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import net.sf.sevenzipjbinding.ArchiveFormat;
import net.sf.sevenzipjbinding.IInArchive;
import net.sf.sevenzipjbinding.IOutCreateArchive7z;
import net.sf.sevenzipjbinding.IOutCreateArchiveZip;
import net.sf.sevenzipjbinding.IOutCreateCallback;
import net.sf.sevenzipjbinding.IOutItemZip;
import net.sf.sevenzipjbinding.IOutStream;
import net.sf.sevenzipjbinding.PropID;
import net.sf.sevenzipjbinding.SevenZip;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.impl.RandomAccessFileInStream;
import net.sf.sevenzipjbinding.impl.RandomAccessFileOutStream;
import ua.i8;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f19537a = {"\u0087", "\u009b", "\u0086", "\u009d", "\u0099", "\u0080", "\u008f", "\u0081", "\u0094", "\u0093", "\u008d", "\u0091", "\u009c", "\u0088", "ª", "ç", "½", "»", "¶", "¤", "¹", "é", "æ", "©", "°", "å", "ä", "Ӱ", "Ժ", "¿", "Ã", "ï", "£", "�"};

    public static String a(String str) throws Exception {
        String[] strArr = f19537a;
        for (int i10 = 0; i10 < 34; i10++) {
            try {
                try {
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            if (str.contains(strArr[i10])) {
                                                throw new Exception();
                                            }
                                        } catch (Exception unused) {
                                            String str2 = new String(str.getBytes(Charset.forName("GB2312")), HTTP.UTF_8);
                                            if (str2.isEmpty()) {
                                                throw new Exception();
                                            }
                                            if (str2.contains("???") && !str.contains("???")) {
                                                throw new Exception();
                                            }
                                            if (str2.contains("??") && !str.contains("??")) {
                                                throw new Exception();
                                            }
                                            if (str2.contains("?") && !str.contains("?")) {
                                                throw new Exception();
                                            }
                                            for (int i11 = 0; i11 < 34; i11++) {
                                                if (str2.contains(strArr[i11])) {
                                                    throw new Exception();
                                                }
                                            }
                                            return "GB2312";
                                        }
                                    } catch (Exception unused2) {
                                        String str3 = new String(str.getBytes(Charset.forName("GBK")), HTTP.UTF_8);
                                        if (str3.isEmpty()) {
                                            throw new Exception();
                                        }
                                        if (str3.contains("???") && !str.contains("???")) {
                                            throw new Exception();
                                        }
                                        if (str3.contains("??") && !str.contains("??")) {
                                            throw new Exception();
                                        }
                                        if (str3.contains("?") && !str.contains("?")) {
                                            throw new Exception();
                                        }
                                        for (int i12 = 0; i12 < 34; i12++) {
                                            if (str3.contains(strArr[i12])) {
                                                throw new Exception();
                                            }
                                        }
                                        return "GBK";
                                    }
                                } catch (Exception unused3) {
                                    String str4 = new String(str.getBytes(Charset.forName("US-ASCII")), HTTP.UTF_8);
                                    if (str4.isEmpty()) {
                                        throw new Exception();
                                    }
                                    if (str4.contains("???") && !str.contains("???")) {
                                        throw new Exception();
                                    }
                                    if (str4.contains("??") && !str.contains("??")) {
                                        throw new Exception();
                                    }
                                    if (str4.contains("?") && !str.contains("?")) {
                                        throw new Exception();
                                    }
                                    for (int i13 = 0; i13 < 34; i13++) {
                                        if (str4.contains(strArr[i13])) {
                                            throw new Exception();
                                        }
                                    }
                                    return "US-ASCII";
                                }
                            } catch (Exception unused4) {
                                String str5 = new String(str.getBytes(Charset.forName("UTF_16BE")), HTTP.UTF_8);
                                if (str5.isEmpty()) {
                                    throw new Exception();
                                }
                                if (str5.contains("???") && !str.contains("???")) {
                                    throw new Exception();
                                }
                                if (str5.contains("??") && !str.contains("??")) {
                                    throw new Exception();
                                }
                                if (str5.contains("?") && !str.contains("?")) {
                                    throw new Exception();
                                }
                                for (int i14 = 0; i14 < 34; i14++) {
                                    if (str5.contains(strArr[i14])) {
                                        throw new Exception();
                                    }
                                }
                                return "UTF_16BE";
                            }
                        } catch (Exception unused5) {
                            String str6 = new String(str.getBytes(Charset.forName("BIG5")), HTTP.UTF_8);
                            if (str6.isEmpty()) {
                                throw new Exception();
                            }
                            if (str6.contains("???") && !str.contains("???")) {
                                throw new Exception();
                            }
                            if (str6.contains("??") && !str.contains("??")) {
                                throw new Exception();
                            }
                            if (str6.contains("?") && !str.contains("?")) {
                                throw new Exception();
                            }
                            for (int i15 = 0; i15 < 34; i15++) {
                                if (str6.contains(strArr[i15])) {
                                    throw new Exception();
                                }
                            }
                            return "BIG5";
                        }
                    } catch (Exception unused6) {
                        String str7 = new String(str.getBytes(Charset.forName("ISO-8859-1")), HTTP.UTF_8);
                        if (str7.isEmpty()) {
                            throw new Exception();
                        }
                        if (str7.contains("???") && !str.contains("???")) {
                            throw new Exception();
                        }
                        if (str7.contains("??") && !str.contains("??")) {
                            throw new Exception();
                        }
                        if (str7.contains("?") && !str.contains("?")) {
                            throw new Exception();
                        }
                        for (int i16 = 0; i16 < 34; i16++) {
                            if (str7.contains(strArr[i16])) {
                                throw new Exception();
                            }
                        }
                        return "ISO-8859-1";
                    }
                } catch (Exception unused7) {
                    return "";
                }
            } catch (Exception unused8) {
                String str8 = new String(str.getBytes(Charset.forName("UTF_16LE")), HTTP.UTF_8);
                if (str8.isEmpty()) {
                    throw new Exception();
                }
                if (str8.contains("???") && !str.contains("???")) {
                    throw new Exception();
                }
                if (str8.contains("??") && !str.contains("??")) {
                    throw new Exception();
                }
                if (str8.contains("?") && !str.contains("?")) {
                    throw new Exception();
                }
                for (int i17 = 0; i17 < 34; i17++) {
                    if (str8.contains(strArr[i17])) {
                        throw new Exception();
                    }
                }
                return "UTF_16LE";
            }
        }
        return "0";
    }

    public static mc.g b(final ArrayList arrayList, final File file, final String str) {
        if (str == null) {
            str = "";
        }
        if (file.getName().endsWith(".7z")) {
            final int i10 = 1;
            return new mc.c(0, new ec.d() { // from class: za.b
                @Override // ec.d
                public final void g(mc.b bVar) {
                    switch (i10) {
                        case 0:
                            File file2 = file;
                            try {
                                boolean z = v.f4106a.s0;
                                ArrayList arrayList2 = arrayList;
                                String str2 = str;
                                if (z) {
                                    d.b.m(arrayList2, file2, str2, bVar);
                                } else {
                                    g.d(arrayList2, file2, str2, bVar);
                                }
                                bVar.b();
                                break;
                            } catch (Exception e7) {
                                try {
                                    file2.delete();
                                } catch (Exception unused) {
                                }
                                bVar.d(e7);
                                return;
                            }
                        default:
                            File file3 = file;
                            try {
                                boolean z4 = v.f4106a.s0;
                                ArrayList arrayList3 = arrayList;
                                String str3 = str;
                                if (z4) {
                                    d.b.l(arrayList3, file3, str3, bVar);
                                } else {
                                    g.c(arrayList3, file3, str3, bVar);
                                }
                                MyDb.get().addIfFile(file3);
                                bVar.b();
                                break;
                            } catch (Exception e10) {
                                try {
                                    file3.delete();
                                } catch (Exception unused2) {
                                }
                                bVar.d(e10);
                            }
                    }
                }
            }).d(rc.f.f13757b).a(fc.b.a());
        }
        final int i11 = 0;
        return new mc.c(0, new ec.d() { // from class: za.b
            @Override // ec.d
            public final void g(mc.b bVar) {
                switch (i11) {
                    case 0:
                        File file2 = file;
                        try {
                            boolean z = v.f4106a.s0;
                            ArrayList arrayList2 = arrayList;
                            String str2 = str;
                            if (z) {
                                d.b.m(arrayList2, file2, str2, bVar);
                            } else {
                                g.d(arrayList2, file2, str2, bVar);
                            }
                            bVar.b();
                            break;
                        } catch (Exception e7) {
                            try {
                                file2.delete();
                            } catch (Exception unused) {
                            }
                            bVar.d(e7);
                            return;
                        }
                    default:
                        File file3 = file;
                        try {
                            boolean z4 = v.f4106a.s0;
                            ArrayList arrayList3 = arrayList;
                            String str3 = str;
                            if (z4) {
                                d.b.l(arrayList3, file3, str3, bVar);
                            } else {
                                g.c(arrayList3, file3, str3, bVar);
                            }
                            MyDb.get().addIfFile(file3);
                            bVar.b();
                            break;
                        } catch (Exception e10) {
                            try {
                                file3.delete();
                            } catch (Exception unused2) {
                            }
                            bVar.d(e10);
                        }
                }
            }
        }).d(rc.f.f13757b).a(fc.b.a());
    }

    public static void c(ArrayList arrayList, File file, String str, mc.b bVar) throws Exception {
        RandomAccessFile randomAccessFile;
        ArrayList arrayListQ = new i8(16).q(arrayList);
        a aVar = new a();
        try {
            file.delete();
        } catch (Exception unused) {
        }
        IOutCreateArchive7z iOutCreateArchive7zOpenOutArchive7z = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                iOutCreateArchive7zOpenOutArchive7z = SevenZip.openOutArchive7z();
                iOutCreateArchive7zOpenOutArchive7z.setLevel(5);
                boolean z = true;
                iOutCreateArchive7zOpenOutArchive7z.setSolid(true);
                boolean z4 = false;
                iOutCreateArchive7zOpenOutArchive7z.setHeaderEncryption(false);
                iOutCreateArchive7zOpenOutArchive7z.createArchive(new RandomAccessFileOutStream(randomAccessFile), arrayListQ.size(), new e(str, arrayListQ, aVar, bVar));
                try {
                    iOutCreateArchive7zOpenOutArchive7z.close();
                } catch (IOException unused2) {
                    z = false;
                }
                try {
                    randomAccessFile.close();
                    z4 = z;
                } catch (IOException unused3) {
                }
                if (z4) {
                    return;
                }
                try {
                    file.delete();
                } catch (Exception unused4) {
                }
                throw new Exception("压缩失败");
            } catch (Throwable th2) {
                th = th2;
                if (iOutCreateArchive7zOpenOutArchive7z != null) {
                    try {
                        iOutCreateArchive7zOpenOutArchive7z.close();
                    } catch (IOException unused5) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused6) {
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    public static void d(ArrayList arrayList, File file, String str, mc.b bVar) throws Exception {
        RandomAccessFile randomAccessFile;
        boolean z;
        ArrayList arrayListQ = new i8(16).q(arrayList);
        a aVar = new a();
        try {
            file.delete();
        } catch (Exception unused) {
        }
        IOutCreateArchiveZip iOutCreateArchiveZipOpenOutArchiveZip = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
        try {
            iOutCreateArchiveZipOpenOutArchiveZip = SevenZip.openOutArchiveZip();
            iOutCreateArchiveZipOpenOutArchiveZip.setLevel(5);
            iOutCreateArchiveZipOpenOutArchiveZip.createArchive((IOutStream) new RandomAccessFileOutStream(randomAccessFile), arrayListQ.size(), (IOutCreateCallback<? extends IOutItemZip>) new d(str, arrayListQ, aVar, bVar));
            boolean z4 = false;
            try {
                iOutCreateArchiveZipOpenOutArchiveZip.close();
                z = true;
            } catch (IOException unused2) {
                z = false;
            }
            try {
                randomAccessFile.close();
                z4 = z;
            } catch (IOException unused3) {
            }
            if (z4) {
                return;
            }
            try {
                file.delete();
            } catch (Exception unused4) {
            }
            throw new Exception("压缩失败");
        } catch (Throwable th3) {
            th = th3;
            if (iOutCreateArchiveZipOpenOutArchiveZip != null) {
                try {
                    iOutCreateArchiveZipOpenOutArchiveZip.close();
                } catch (IOException unused5) {
                }
            }
            if (randomAccessFile == null) {
                throw th;
            }
            try {
                randomAccessFile.close();
                throw th;
            } catch (IOException unused6) {
                throw th;
            }
        }
    }

    public static void e(File file, String str, String str2, mc.b bVar) {
        if (!str.endsWith("/")) {
            str = str.concat("/");
        }
        try {
            f(file, str, str2, bVar);
        } catch (Exception e7) {
            e7.printStackTrace();
            b0.f5652a.getClass();
            w0.B(str);
            String strZ = g.b.z(e7, new StringBuilder(""));
            if (!strZ.contains("No password was") && !strZ.contains("Password is") && !strZ.contains("can't be opened with") && !strZ.contains("extracting all items")) {
                throw e7;
            }
            throw new Exception((str2 == null || str2.isEmpty()) ? "需要密码" : "密码错误");
        }
    }

    public static void f(File file, String str, String str2, mc.b bVar) throws Throwable {
        RandomAccessFile randomAccessFile;
        IInArchive iInArchiveOpenInArchive;
        String str3;
        Exception e7;
        IInArchive iInArchive = null;
        try {
            a aVar = new a();
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                if (str2 == null) {
                    iInArchiveOpenInArchive = SevenZip.openInArchive(null, new RandomAccessFileInStream(randomAccessFile));
                    try {
                        if (Boolean.TRUE.equals(iInArchiveOpenInArchive.getArchiveProperty(PropID.ENCRYPTED))) {
                            throw new Exception("需要密码");
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        iInArchive = iInArchiveOpenInArchive;
                        if (iInArchive != null) {
                            try {
                                iInArchive.close();
                            } catch (SevenZipException unused) {
                            }
                        }
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                } else {
                    iInArchiveOpenInArchive = SevenZip.openInArchive((ArchiveFormat) null, new RandomAccessFileInStream(randomAccessFile), str2);
                }
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    str3 = "";
                    for (int i10 = 0; i10 < iInArchiveOpenInArchive.getNumberOfItems(); i10++) {
                        try {
                            String stringProperty = iInArchiveOpenInArchive.getStringProperty(i10, PropID.PATH);
                            if (stringProperty == null || stringProperty.isEmpty()) {
                                throw new Exception();
                            }
                            stringBuffer.append(stringProperty);
                            System.out.getClass();
                            if (i10 == 0 && ((Boolean) iInArchiveOpenInArchive.getProperty(i10, PropID.IS_FOLDER)).booleanValue()) {
                                str3 = stringProperty;
                            } else if (!str3.isEmpty()) {
                                if (!stringProperty.startsWith(str3 + "/")) {
                                    str3 = "";
                                }
                            }
                        } catch (Exception e10) {
                            e7 = e10;
                            e7.printStackTrace();
                            String str4 = str3;
                            System.out.getClass();
                            iInArchiveOpenInArchive.extract(null, false, new c(iInArchiveOpenInArchive, str2, aVar, str4, str, bVar));
                            iInArchiveOpenInArchive.close();
                            randomAccessFile.close();
                        }
                    }
                    aVar.f19516d = a(stringBuffer.toString());
                    System.out.getClass();
                } catch (Exception e11) {
                    str3 = "";
                    e7 = e11;
                }
                String str42 = str3;
                System.out.getClass();
                iInArchiveOpenInArchive.extract(null, false, new c(iInArchiveOpenInArchive, str2, aVar, str42, str, bVar));
                try {
                    iInArchiveOpenInArchive.close();
                } catch (SevenZipException unused3) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused4) {
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            randomAccessFile = null;
        }
    }

    public static boolean g(String str) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.endsWith(".zip") || lowerCase.endsWith(".rar") || lowerCase.endsWith(".tar") || lowerCase.endsWith(".gz") || lowerCase.endsWith(".tgz") || lowerCase.endsWith(".bz2") || lowerCase.endsWith(".tar.bz") || lowerCase.endsWith(".tar.z") || lowerCase.endsWith(".7z") || lowerCase.endsWith(".xz") || lowerCase.endsWith(".bzip2") || lowerCase.endsWith(".gzip") || lowerCase.endsWith(".wim")) {
            return true;
        }
        DecimalFormat decimalFormat = k.f4034u0;
        Iterator it = j.f4033a.f4059m0.iterator();
        while (it.hasNext()) {
            if (lowerCase.endsWith("." + ((String) it.next()))) {
                return true;
            }
        }
        return false;
    }
}
