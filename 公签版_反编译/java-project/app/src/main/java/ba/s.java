package ba;

import java.io.Serializable;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public final String f2753a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2754b;

    /* renamed from: c, reason: collision with root package name */
    public final long f2755c;

    /* renamed from: d, reason: collision with root package name */
    public long f2756d;

    /* renamed from: e, reason: collision with root package name */
    public int f2757e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2758f;

    /* renamed from: g, reason: collision with root package name */
    public final int f2759g;

    /* renamed from: h, reason: collision with root package name */
    public Serializable f2760h;

    /* renamed from: i, reason: collision with root package name */
    public final Serializable f2761i;

    public s(z7.s sVar) {
        int iE = sVar.o("fileType").e();
        this.f2758f = iE;
        if (iE != 1) {
            try {
                sVar.o("folderDesc").i();
            } catch (Exception unused) {
            }
            this.f2753a = sVar.o("updTime").i();
            sVar.o("sortId").h();
            this.f2754b = sVar.o("name").i();
            this.f2760h = sVar.o("folderName").i();
            sVar.o("type").e();
            this.f2757e = sVar.o("userId").e();
            this.f2759g = sVar.o("folderId").e();
            return;
        }
        sVar.o("iconId").h();
        String strI = sVar.o("fileName").i();
        this.f2761i = strI;
        sVar.o("fileSaves").h();
        sVar.o("fileStars").c();
        sVar.o("type").e();
        if (sVar.o("userId") == null) {
            this.f2757e = 0;
        } else {
            this.f2757e = sVar.o("userId").e();
        }
        sVar.o("fileComments").e();
        this.f2755c = sVar.o("fileSize").h();
        sVar.o("fileIcon").i();
        this.f2753a = sVar.o("updTime").i();
        if (sVar.o("sortId") != null) {
            sVar.o("sortId").h();
        }
        if (sVar.o("name") == null) {
            this.f2754b = strI;
        } else {
            this.f2754b = sVar.o("name").i();
        }
        sVar.o("fileDownloads").h();
        if (sVar.o("fileUrl") != null) {
            z7.p pVarO = sVar.o("fileUrl");
            pVarO.getClass();
            if (!(pVarO instanceof z7.r)) {
                sVar.o("fileUrl").i();
            }
        }
        sVar.o("fileLikes").h();
        this.f2756d = sVar.o("fileId").h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s(String str, String str2, long j10, int i10, int i11, int i12, int[] iArr, TreeMap treeMap) {
        this.f2753a = str;
        this.f2754b = str2;
        this.f2755c = j10;
        this.f2756d = 0L;
        this.f2757e = i10;
        this.f2758f = i11;
        this.f2759g = i12;
        this.f2760h = iArr;
        this.f2761i = treeMap;
    }
}
