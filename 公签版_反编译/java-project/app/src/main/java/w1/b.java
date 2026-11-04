package w1;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.hsae.autosdk.core.NoConst;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import u1.f0;

/* loaded from: classes.dex */
public final class b extends c {

    /* renamed from: e, reason: collision with root package name */
    public final AssetManager f17346e;

    /* renamed from: f, reason: collision with root package name */
    public Uri f17347f;

    /* renamed from: g, reason: collision with root package name */
    public InputStream f17348g;

    /* renamed from: h, reason: collision with root package name */
    public long f17349h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17350i;

    public b(Context context) {
        super(false);
        this.f17346e = context.getAssets();
    }

    @Override // w1.h
    public final void close() {
        this.f17347f = null;
        try {
            try {
                InputStream inputStream = this.f17348g;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e7) {
                throw new a(e7, NoConst.MIN_HEARTBEAT_INTERVAL);
            }
        } finally {
            this.f17348g = null;
            if (this.f17350i) {
                this.f17350i = false;
                l();
            }
        }
    }

    @Override // w1.h
    public final Uri getUri() {
        return this.f17347f;
    }

    @Override // w1.h
    public final long j(j jVar) throws IOException {
        try {
            Uri uri = jVar.f17367a;
            long j10 = jVar.f17371e;
            this.f17347f = uri;
            String path = uri.getPath();
            path.getClass();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            m();
            InputStream inputStreamOpen = this.f17346e.open(path, 1);
            this.f17348g = inputStreamOpen;
            if (inputStreamOpen.skip(j10) < j10) {
                throw new a(null, 2008);
            }
            long j11 = jVar.f17372f;
            if (j11 != -1) {
                this.f17349h = j11;
            } else {
                long jAvailable = this.f17348g.available();
                this.f17349h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.f17349h = -1L;
                }
            }
            this.f17350i = true;
            n(jVar);
            return this.f17349h;
        } catch (a e7) {
            throw e7;
        } catch (IOException e10) {
            throw new a(e10, e10 instanceof FileNotFoundException ? 2005 : NoConst.MIN_HEARTBEAT_INTERVAL);
        }
    }

    @Override // r1.h
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f17349h;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e7) {
                throw new a(e7, NoConst.MIN_HEARTBEAT_INTERVAL);
            }
        }
        InputStream inputStream = this.f17348g;
        String str = f0.f15206a;
        int i12 = inputStream.read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        long j11 = this.f17349h;
        if (j11 != -1) {
            this.f17349h = j11 - i12;
        }
        k(i12);
        return i12;
    }
}
