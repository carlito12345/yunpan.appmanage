package androidx.emoji2.text;

import android.util.SparseArray;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public int f1129a;

    /* renamed from: b, reason: collision with root package name */
    public int f1130b;

    /* renamed from: c, reason: collision with root package name */
    public int f1131c;

    /* renamed from: d, reason: collision with root package name */
    public Object f1132d;

    /* renamed from: e, reason: collision with root package name */
    public Object f1133e;

    /* renamed from: f, reason: collision with root package name */
    public Object f1134f;

    public q(z7.s sVar) {
        try {
            this.f1129a = sVar.o("FileId").e();
            this.f1132d = sVar.o("FileName").i();
            this.f1130b = sVar.o("Type").e();
            this.f1131c = sVar.o("Size").e();
            sVar.o("ContentType").i();
            sVar.o("S3KeyFlag").i();
            this.f1133e = sVar.o("CreateAt").i();
            sVar.o("UpdateAt").i();
            this.f1134f = sVar.o("Etag").i();
            sVar.o("DownloadUrl").i();
            sVar.o("Status").e();
            sVar.o("ParentFileId").e();
            sVar.o("Category").e();
            sVar.o("PunishFlag").e();
            sVar.o("StorageNode").i();
            sVar.o("PreviewType").e();
        } catch (Exception unused) {
        }
    }

    public int a(int i10) {
        SparseArray sparseArray = ((t) this.f1133e).f1147a;
        t tVar = sparseArray == null ? null : (t) sparseArray.get(i10);
        int i11 = 1;
        if (this.f1129a == 2) {
            if (tVar != null) {
                this.f1133e = tVar;
                this.f1131c++;
            } else if (i10 == 65038) {
                b();
            } else if (i10 != 65039) {
                t tVar2 = (t) this.f1133e;
                if (tVar2.f1148b != null) {
                    if (this.f1131c != 1) {
                        this.f1134f = tVar2;
                        b();
                    } else if (c()) {
                        this.f1134f = (t) this.f1133e;
                        b();
                    } else {
                        b();
                    }
                    i11 = 3;
                } else {
                    b();
                }
            }
            i11 = 2;
        } else if (tVar == null) {
            b();
        } else {
            this.f1129a = 2;
            this.f1133e = tVar;
            this.f1131c = 1;
            i11 = 2;
        }
        this.f1130b = i10;
        return i11;
    }

    public void b() {
        this.f1129a = 1;
        this.f1133e = (t) this.f1132d;
        this.f1131c = 0;
    }

    public boolean c() {
        h1.a aVarC = ((t) this.f1133e).f1148b.c();
        int iA = aVarC.a(6);
        return !(iA == 0 || ((ByteBuffer) aVarC.f6323d).get(iA + aVarC.f6320a) == 0) || this.f1130b == 65039;
    }

    public q(t tVar) {
        this.f1129a = 1;
        this.f1132d = tVar;
        this.f1133e = tVar;
    }
}
