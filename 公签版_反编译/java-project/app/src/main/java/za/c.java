package za;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.Charset;
import java.text.DecimalFormat;
import net.sf.sevenzipjbinding.ExtractAskMode;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.IArchiveExtractCallback;
import net.sf.sevenzipjbinding.ICryptoGetTextPassword;
import net.sf.sevenzipjbinding.IInArchive;
import net.sf.sevenzipjbinding.ISequentialOutStream;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;
import ta.q;
import ua.i8;

/* loaded from: classes.dex */
public final class c implements IArchiveExtractCallback, ICryptoGetTextPassword {

    /* renamed from: a, reason: collision with root package name */
    public final IInArchive f19521a;

    /* renamed from: b, reason: collision with root package name */
    public int f19522b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f19523c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a f19524d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f19525e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f19526f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ mc.b f19527g;

    public c(IInArchive iInArchive, String str, a aVar, String str2, String str3, mc.b bVar) {
        this.f19523c = str;
        this.f19524d = aVar;
        this.f19525e = str2;
        this.f19526f = str3;
        this.f19527g = bVar;
        this.f19521a = iInArchive;
    }

    @Override // net.sf.sevenzipjbinding.ICryptoGetTextPassword
    public final String cryptoGetTextPassword() {
        return this.f19523c;
    }

    /* JADX WARN: Removed duplicated region for block: B:194:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02d7  */
    @Override // net.sf.sevenzipjbinding.IArchiveExtractCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ISequentialOutStream getStream(int i10, ExtractAskMode extractAskMode) throws Exception {
        String path;
        boolean zIsFolder;
        String str;
        if (extractAskMode != ExtractAskMode.EXTRACT) {
            return null;
        }
        ISimpleInArchiveItem iSimpleInArchiveItem = this.f19521a.getSimpleInterface().getArchiveItems()[i10];
        if (iSimpleInArchiveItem.isEncrypted() && this.f19523c == null) {
            throw new SevenZipException("需要密码");
        }
        a aVar = this.f19524d;
        if (aVar.f19516d.isEmpty()) {
            path = iSimpleInArchiveItem.getPath();
            String[] strArr = g.f19537a;
            if (path.isEmpty()) {
                path = "";
            } else {
                for (int i11 = 0; i11 < 34; i11++) {
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            if (path.contains(strArr[i11])) {
                                                throw new Exception();
                                            }
                                        } catch (Exception unused) {
                                            str = new String(path.getBytes(Charset.forName("ISO-8859-1")), HTTP.UTF_8);
                                            if (str.isEmpty()) {
                                                throw new Exception();
                                            }
                                            if (str.contains("???") && !path.contains("???")) {
                                                throw new Exception();
                                            }
                                            if (str.contains("??") && !path.contains("??")) {
                                                throw new Exception();
                                            }
                                            if (str.contains("?") && !path.contains("?")) {
                                                throw new Exception();
                                            }
                                            for (int i12 = 0; i12 < 34; i12++) {
                                                if (str.contains(strArr[i12])) {
                                                    throw new Exception();
                                                }
                                            }
                                            path = str;
                                            zIsFolder = iSimpleInArchiveItem.isFolder();
                                            String str2 = this.f19525e;
                                            String str3 = this.f19526f;
                                            if (zIsFolder) {
                                            }
                                        }
                                    } catch (Exception unused2) {
                                    }
                                } catch (Exception unused3) {
                                    str = new String(path.getBytes(Charset.forName("GB2312")), HTTP.UTF_8);
                                    if (str.isEmpty()) {
                                        throw new Exception();
                                    }
                                    if (str.contains("???") && !path.contains("???")) {
                                        throw new Exception();
                                    }
                                    if (str.contains("??") && !path.contains("??")) {
                                        throw new Exception();
                                    }
                                    if (str.contains("?") && !path.contains("?")) {
                                        throw new Exception();
                                    }
                                    for (int i13 = 0; i13 < 34; i13++) {
                                        if (str.contains(strArr[i13])) {
                                            throw new Exception();
                                        }
                                    }
                                    path = str;
                                    zIsFolder = iSimpleInArchiveItem.isFolder();
                                    String str22 = this.f19525e;
                                    String str32 = this.f19526f;
                                    if (zIsFolder) {
                                    }
                                }
                            } catch (Exception unused4) {
                                str = new String(path.getBytes(Charset.forName("GBK")), HTTP.UTF_8);
                                if (str.isEmpty()) {
                                    throw new Exception();
                                }
                                if (str.contains("???") && !path.contains("???")) {
                                    throw new Exception();
                                }
                                if (str.contains("??") && !path.contains("??")) {
                                    throw new Exception();
                                }
                                if (str.contains("?") && !path.contains("?")) {
                                    throw new Exception();
                                }
                                for (int i14 = 0; i14 < 34; i14++) {
                                    if (str.contains(strArr[i14])) {
                                        throw new Exception();
                                    }
                                }
                                path = str;
                                zIsFolder = iSimpleInArchiveItem.isFolder();
                                String str222 = this.f19525e;
                                String str322 = this.f19526f;
                                if (zIsFolder) {
                                }
                            }
                        } catch (Exception unused5) {
                            str = new String(path.getBytes(Charset.forName("US-ASCII")), HTTP.UTF_8);
                            if (str.isEmpty()) {
                                throw new Exception();
                            }
                            if (str.contains("???") && !path.contains("???")) {
                                throw new Exception();
                            }
                            if (str.contains("??") && !path.contains("??")) {
                                throw new Exception();
                            }
                            if (str.contains("?") && !path.contains("?")) {
                                throw new Exception();
                            }
                            for (int i15 = 0; i15 < 34; i15++) {
                                if (str.contains(strArr[i15])) {
                                    throw new Exception();
                                }
                            }
                            path = str;
                            zIsFolder = iSimpleInArchiveItem.isFolder();
                            String str2222 = this.f19525e;
                            String str3222 = this.f19526f;
                            if (zIsFolder) {
                            }
                        }
                    } catch (Exception unused6) {
                        str = new String(path.getBytes(Charset.forName("BIG5")), HTTP.UTF_8);
                        if (str.isEmpty()) {
                            throw new Exception();
                        }
                        if (str.contains("???") && !path.contains("???")) {
                            throw new Exception();
                        }
                        if (str.contains("??") && !path.contains("??")) {
                            throw new Exception();
                        }
                        if (str.contains("?") && !path.contains("?")) {
                            throw new Exception();
                        }
                        for (int i16 = 0; i16 < 34; i16++) {
                            if (str.contains(strArr[i16])) {
                                throw new Exception();
                            }
                        }
                        path = str;
                        zIsFolder = iSimpleInArchiveItem.isFolder();
                        String str22222 = this.f19525e;
                        String str32222 = this.f19526f;
                        if (zIsFolder) {
                        }
                    }
                }
            }
        } else if (aVar.f19516d.equals("0")) {
            path = iSimpleInArchiveItem.getPath();
        } else {
            try {
                path = new String(iSimpleInArchiveItem.getPath().getBytes(aVar.f19516d), HTTP.UTF_8);
            } catch (Exception unused7) {
                path = iSimpleInArchiveItem.getPath();
            }
        }
        zIsFolder = iSimpleInArchiveItem.isFolder();
        String str222222 = this.f19525e;
        String str322222 = this.f19526f;
        if (zIsFolder) {
            File file = !str222222.isEmpty() ? new File(q.m(str222222, path, g.b.m(str322222))) : new File(g.b.j(str322222, path));
            file.getParentFile().mkdirs();
            try {
                return new i8(15, (Object) new FileOutputStream(file), (Object) file, false);
            } catch (Exception e7) {
                throw new SevenZipException("写入文件失败: " + file.getPath(), e7);
            }
        }
        if (str222222.isEmpty()) {
            new File(g.b.k(str322222, path, "/")).mkdirs();
        } else {
            if (str222222.equals(iSimpleInArchiveItem.getPath())) {
                return null;
            }
            StringBuilder sbM = g.b.m(str322222);
            sbM.append(path.substring(str222222.length()));
            sbM.append("/");
            new File(sbM.toString()).mkdirs();
        }
        return null;
    }

    @Override // net.sf.sevenzipjbinding.IProgress
    public final void setCompleted(long j10) {
        int i10 = this.f19522b + 1;
        this.f19522b = i10;
        a aVar = this.f19524d;
        aVar.f19514b = j10;
        mc.b bVar = this.f19527g;
        if (bVar == null || i10 % 30 != 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(p000if.a.D0(aVar.f19514b));
        sb2.append("/");
        sb2.append(p000if.a.D0(aVar.f19513a));
        sb2.append("  ");
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        DecimalFormat decimalFormat2 = k.f4034u0;
        double d10 = aVar.f19514b;
        Double.isNaN(d10);
        double d11 = aVar.f19513a;
        Double.isNaN(d11);
        aVar.f19515c = q.n(decimalFormat2, (d10 * 100.0d) / d11, sb2, "%");
        bVar.f(aVar);
    }

    @Override // net.sf.sevenzipjbinding.IArchiveExtractCallback
    public final void setOperationResult(ExtractOperationResult extractOperationResult) throws SevenZipException {
        switch (f.f19536a[extractOperationResult.ordinal()]) {
            case 2:
                throw new SevenZipException(this.f19523c == null ? "需要密码" : "密码错误");
            case 3:
                throw new SevenZipException("不支持此格式");
            case 4:
                throw new SevenZipException("数据出错");
            case 5:
                throw new SevenZipException("CRC校验失败");
            case 6:
                throw new SevenZipException("归档数据不可用");
            case 7:
                throw new SevenZipException("存档意外结束");
            case 8:
                throw new SevenZipException("出错：一些数据没写入");
            case 9:
                throw new SevenZipException("数据出错");
            default:
                return;
        }
    }

    @Override // net.sf.sevenzipjbinding.IProgress
    public final void setTotal(long j10) {
        this.f19524d.f19513a = j10;
    }

    @Override // net.sf.sevenzipjbinding.IArchiveExtractCallback
    public final void prepareOperation(ExtractAskMode extractAskMode) {
    }
}
