package k9;

import com.yunpan.appmanage.util.a0;
import java.io.File;
import java.io.Serializable;
import okhttp3.MediaType;

/* loaded from: classes.dex */
public final class b implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final File f10206a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10207b;

    /* renamed from: c, reason: collision with root package name */
    public final transient MediaType f10208c;

    /* renamed from: d, reason: collision with root package name */
    public final long f10209d;

    public b(File file, String str, MediaType mediaType) {
        this.f10206a = file;
        this.f10207b = str;
        this.f10208c = mediaType;
        this.f10209d = a0.p(file);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("FileWrapper{file=");
        sb2.append(this.f10206a);
        sb2.append(", fileName=");
        sb2.append(this.f10207b);
        sb2.append(", contentType=");
        sb2.append(this.f10208c);
        sb2.append(", fileSize=");
        return android.support.v4.media.session.a.t(sb2, this.f10209d, "}");
    }
}
