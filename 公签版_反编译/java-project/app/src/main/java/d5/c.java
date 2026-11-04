package d5;

import androidx.room.i;
import java.io.File;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final String f4466a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f4467b;

    /* renamed from: c, reason: collision with root package name */
    public final File[] f4468c;

    /* renamed from: d, reason: collision with root package name */
    public final File[] f4469d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4470e;

    /* renamed from: f, reason: collision with root package name */
    public i f4471f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ d f4472g;

    public c(d dVar, String str) {
        this.f4472g = dVar;
        this.f4466a = str;
        int i10 = dVar.f4479g;
        this.f4467b = new long[i10];
        this.f4468c = new File[i10];
        this.f4469d = new File[i10];
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append('.');
        int length = sb2.length();
        for (int i11 = 0; i11 < dVar.f4479g; i11++) {
            sb2.append(i11);
            File[] fileArr = this.f4468c;
            String string = sb2.toString();
            File file = dVar.f4473a;
            fileArr[i11] = new File(file, string);
            sb2.append(".tmp");
            this.f4469d[i11] = new File(file, sb2.toString());
            sb2.setLength(length);
        }
    }

    public final String a() {
        StringBuilder sb2 = new StringBuilder();
        for (long j10 : this.f4467b) {
            sb2.append(' ');
            sb2.append(j10);
        }
        return sb2.toString();
    }
}
