package x9;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.shizuku.FileParcelable;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class w3 {

    /* renamed from: a, reason: collision with root package name */
    public String f18364a;

    /* renamed from: b, reason: collision with root package name */
    public String f18365b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18366c;

    /* renamed from: d, reason: collision with root package name */
    public long f18367d;

    /* renamed from: e, reason: collision with root package name */
    public String f18368e;

    /* renamed from: f, reason: collision with root package name */
    public String f18369f;

    /* renamed from: g, reason: collision with root package name */
    public long f18370g;

    /* renamed from: h, reason: collision with root package name */
    public String f18371h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f18372i;

    /* renamed from: j, reason: collision with root package name */
    public String f18373j;

    /* renamed from: k, reason: collision with root package name */
    public int f18374k;
    public String l;

    /* renamed from: m, reason: collision with root package name */
    public String f18375m;

    /* renamed from: n, reason: collision with root package name */
    public final v3.f f18376n;

    /* renamed from: o, reason: collision with root package name */
    public String f18377o;

    public w3() {
        this.f18367d = -1L;
        this.f18368e = "";
        this.f18369f = "";
        this.f18370g = 0L;
        this.f18371h = "";
        this.f18372i = false;
        this.f18373j = "";
        this.f18374k = 0;
        this.l = "";
        this.f18375m = "";
        this.f18376n = null;
        this.f18377o = null;
        this.f18364a = "";
        this.f18365b = "";
        this.f18366c = true;
    }

    public w3(v3.f fVar, String str) throws Exception {
        long jT;
        this.f18367d = -1L;
        this.f18368e = "";
        this.f18369f = "";
        this.f18370g = 0L;
        this.f18371h = "";
        this.f18372i = false;
        this.f18373j = "";
        this.f18374k = 0;
        this.l = "";
        this.f18375m = "";
        this.f18377o = null;
        this.f18376n = fVar;
        this.f18364a = com.bumptech.glide.d.U((Context) fVar.f16475c, (Uri) fVar.f16476d, "_display_name");
        StringBuilder sbB = d0.f.b(str, "/");
        sbB.append(this.f18364a);
        this.f18365b = sbB.toString();
        this.f18368e = str;
        Context context = (Context) fVar.f16475c;
        Uri uri = (Uri) fVar.f16476d;
        this.f18367d = com.bumptech.glide.d.T(context, uri, "_size", 0L);
        Calendar calendar = Calendar.getInstance();
        try {
            jT = com.bumptech.glide.d.T(context, uri, "last_modified", 0L);
        } catch (Exception unused) {
            jT = 0;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        calendar.setTimeInMillis(jT);
        this.f18371h = simpleDateFormat.format(calendar.getTime());
        String strU = com.bumptech.glide.d.U(context, uri, "mime_type");
        if (!"vnd.android.document/directory".equals(strU) && !TextUtils.isEmpty(strU)) {
            this.f18366c = false;
            return;
        }
        if ("vnd.android.document/directory".equals(com.bumptech.glide.d.U((Context) fVar.f16475c, (Uri) fVar.f16476d, "mime_type"))) {
            this.f18367d = -1L;
            this.f18366c = "vnd.android.document/directory".equals(com.bumptech.glide.d.U((Context) fVar.f16475c, (Uri) fVar.f16476d, "mime_type"));
        } else if (this.f18367d == 0) {
            this.f18367d = -1L;
            this.f18366c = true;
        } else {
            this.f18366c = false;
        }
    }

    public w3(File file) throws IOException {
        this.f18367d = -1L;
        this.f18368e = "";
        this.f18369f = "";
        this.f18370g = 0L;
        this.f18371h = "";
        this.f18372i = false;
        this.f18373j = "";
        this.f18374k = 0;
        this.l = "";
        this.f18375m = "";
        this.f18376n = null;
        this.f18377o = null;
        String name = file.getName();
        this.f18364a = name;
        if (name.contains("\u200b")) {
            this.f18364a = this.f18364a.replace("\u200b", "");
        }
        this.f18365b = file.getPath();
        String parent = new File(this.f18365b).getParent();
        this.f18368e = parent;
        if (parent == null) {
            this.f18368e = "";
        }
        try {
            this.f18367d = file.length();
            this.f18370g = file.lastModified();
        } catch (Exception unused) {
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(this.f18370g);
        this.f18371h = simpleDateFormat.format(calendar.getTime());
        if (file.isFile()) {
            this.f18366c = false;
            return;
        }
        if (file.isDirectory()) {
            this.f18367d = -1L;
            this.f18366c = true;
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                if (Files.isSymbolicLink(file.toPath())) {
                    Path symbolicLink = Files.readSymbolicLink(file.toPath());
                    this.f18369f = symbolicLink.toFile().getPath();
                    if (symbolicLink.toFile().isFile()) {
                        this.f18366c = false;
                    }
                }
            } else {
                File canonicalFile = file.getCanonicalFile();
                if (!canonicalFile.equals(file.getAbsoluteFile())) {
                    this.f18369f = canonicalFile.getPath();
                    if (canonicalFile.isFile()) {
                        this.f18366c = false;
                    }
                }
            }
        } catch (Exception unused2) {
        }
        if (this.f18367d < 1) {
            this.f18366c = true;
        }
    }

    public w3(FileParcelable fileParcelable) {
        this.f18367d = -1L;
        this.f18368e = "";
        this.f18369f = "";
        this.f18370g = 0L;
        this.f18371h = "";
        this.f18372i = false;
        this.f18373j = "";
        this.f18374k = 0;
        this.l = "";
        this.f18375m = "";
        this.f18376n = null;
        this.f18377o = null;
        String name = new File(fileParcelable.path).getName();
        this.f18364a = name;
        if (name.contains("\u200b")) {
            this.f18364a = this.f18364a.replace("\u200b", "");
        }
        this.f18365b = fileParcelable.path;
        String parent = new File(this.f18365b).getParent();
        this.f18368e = parent;
        if (parent == null) {
            this.f18368e = "";
        }
        try {
            this.f18367d = fileParcelable.length;
            this.f18370g = fileParcelable.lastModified;
        } catch (Exception unused) {
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(this.f18370g);
        this.f18371h = simpleDateFormat.format(calendar.getTime());
        this.f18366c = fileParcelable.isDir;
    }

    public w3(String str, String str2, boolean z) {
        this.f18367d = -1L;
        this.f18368e = "";
        this.f18369f = "";
        this.f18370g = 0L;
        this.f18371h = "";
        this.f18372i = false;
        this.f18373j = "";
        this.f18374k = 0;
        this.l = "";
        this.f18375m = "";
        this.f18376n = null;
        this.f18377o = null;
        this.f18364a = str;
        this.f18365b = str2;
        this.f18366c = z;
        String parent = new File(str2).getParent();
        this.f18368e = parent;
        if (parent == null) {
            this.f18368e = "";
        }
    }

    public w3(String str, int i10, String str2, boolean z) {
        this.f18367d = -1L;
        this.f18368e = "";
        this.f18369f = "";
        this.f18370g = 0L;
        this.f18371h = "";
        this.f18373j = "";
        this.f18374k = 0;
        this.l = "";
        this.f18375m = "";
        this.f18376n = null;
        this.f18377o = null;
        this.f18364a = str;
        this.f18365b = str2;
        this.f18366c = true;
        this.f18372i = z;
        String parent = new File(str2).getParent();
        this.f18368e = parent;
        if (parent == null) {
            this.f18368e = "";
        }
    }

    public w3(String str, String str2, String str3) {
        this.f18367d = -1L;
        this.f18368e = "";
        this.f18369f = "";
        this.f18370g = 0L;
        this.f18371h = "";
        this.f18372i = false;
        this.f18374k = 0;
        this.l = "";
        this.f18375m = "";
        this.f18376n = null;
        this.f18377o = null;
        this.f18364a = str;
        this.f18365b = str2;
        this.f18366c = false;
        this.f18373j = str3;
        String parent = new File(str2).getParent();
        this.f18368e = parent;
        if (parent == null) {
            this.f18368e = "";
        }
    }

    public w3(String str, String str2) {
        this.f18367d = -1L;
        this.f18368e = "";
        this.f18369f = "";
        long jLastModified = 0;
        this.f18370g = 0L;
        this.f18371h = "";
        this.f18372i = false;
        this.f18373j = "";
        this.f18374k = 0;
        this.l = "";
        this.f18375m = "";
        this.f18376n = null;
        this.f18377o = null;
        this.f18364a = str;
        this.f18365b = str2;
        this.f18366c = true;
        try {
            try {
                jLastModified = new File(str2).lastModified();
            } catch (Exception unused) {
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(jLastModified);
            this.f18371h = simpleDateFormat.format(calendar.getTime());
        } catch (Exception unused2) {
            this.f18371h = "";
        }
        String parent = new File(str2).getParent();
        this.f18368e = parent;
        if (parent == null) {
            this.f18368e = "";
        }
    }

    public w3(String str) {
        this(new File(str));
    }

    public w3(FileInfo fileInfo) {
        this.f18367d = -1L;
        this.f18368e = "";
        this.f18369f = "";
        this.f18370g = 0L;
        this.f18371h = "";
        this.f18372i = false;
        this.f18373j = "";
        this.f18374k = 0;
        this.l = "";
        this.f18375m = "";
        this.f18376n = null;
        this.f18377o = null;
        this.f18364a = fileInfo.name;
        this.f18365b = fileInfo.path;
        this.f18368e = fileInfo.parent;
        this.f18366c = fileInfo.isDir;
        long j10 = fileInfo.lastModified;
        this.f18370g = j10;
        this.f18371h = p000if.a.m0(j10);
        this.f18369f = fileInfo.link;
        if (fileInfo.isDir) {
            return;
        }
        this.f18367d = fileInfo.size;
    }
}
