package tg;

import com.alibaba.sdk.android.oss.common.OSSHeaders;
import j$.util.Objects;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;

/* loaded from: classes.dex */
public abstract class b extends p000if.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15097a = 1;

    /* renamed from: b, reason: collision with root package name */
    public Object f15098b;

    public b() {
    }

    public InputStream N0(OpenOption... openOptionArr) {
        return Files.newInputStream(O0(), openOptionArr);
    }

    public Path O0() {
        String simpleName = getClass().getSimpleName();
        Object obj = this.f15098b;
        throw new UnsupportedOperationException(String.format("%s#getPath() for %s origin %s", simpleName, obj.getClass().getSimpleName(), obj));
    }

    public void P0(InputStream inputStream) {
        this.f15098b = new a(1, inputStream);
    }

    public String toString() {
        switch (this.f15097a) {
            case 0:
                return getClass().getSimpleName() + "[" + this.f15098b.toString() + "]";
            default:
                return super.toString();
        }
    }

    public b(Object obj) {
        Objects.requireNonNull(obj, OSSHeaders.ORIGIN);
        this.f15098b = obj;
    }
}
