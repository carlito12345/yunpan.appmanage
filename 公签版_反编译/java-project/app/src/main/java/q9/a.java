package q9;

import androidx.room.s;
import com.thegrizzlylabs.sardineandroid.model.Response;
import java.net.URI;
import java.util.logging.Logger;
import v3.f;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f13170c = Logger.getLogger(a.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final URI f13171a;

    /* renamed from: b, reason: collision with root package name */
    public final f f13172b;

    public a(Response response) {
        this.f13171a = new URI(response.getHref());
        String status = response.getStatus();
        if (status != null && !status.isEmpty()) {
            try {
                s.z(response.getStatus());
            } catch (Exception unused) {
                f13170c.warning("Failed to parse status line: ".concat(status));
            }
        }
        this.f13172b = new f(this, response);
    }

    public final String a() {
        String path = this.f13171a.getPath();
        try {
            if (path.endsWith("/")) {
                path = path.substring(0, path.length() - 1);
            }
            return path.substring(path.lastIndexOf(47) + 1);
        } catch (StringIndexOutOfBoundsException unused) {
            f13170c.warning("Failed to parse name from path " + path);
            return null;
        }
    }

    public final String toString() {
        return this.f13171a.getPath();
    }
}
