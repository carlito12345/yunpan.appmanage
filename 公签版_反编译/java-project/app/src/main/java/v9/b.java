package v9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class b implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final String[] f16682a;

    public b(String[] strArr) {
        this.f16682a = strArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
    }

    public final void r(OutputStream outputStream) throws IOException {
        for (String str : this.f16682a) {
            outputStream.write(str.getBytes(Charset.forName(HTTP.UTF_8)));
            outputStream.write(10);
        }
    }
}
