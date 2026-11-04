package w1;

import android.net.Uri;
import android.system.OsConstants;
import android.text.TextUtils;
import com.hsae.autosdk.core.NoConst;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import u1.f0;
import ua.t7;

/* loaded from: classes.dex */
public final class o extends c {

    /* renamed from: e, reason: collision with root package name */
    public RandomAccessFile f17396e;

    /* renamed from: f, reason: collision with root package name */
    public Uri f17397f;

    /* renamed from: g, reason: collision with root package name */
    public long f17398g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17399h;

    public o() {
        super(false);
    }

    @Override // w1.h
    public final void close() {
        this.f17397f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f17396e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e7) {
                throw new n(e7, NoConst.MIN_HEARTBEAT_INTERVAL);
            }
        } finally {
            this.f17396e = null;
            if (this.f17399h) {
                this.f17399h = false;
                l();
            }
        }
    }

    @Override // w1.h
    public final Uri getUri() {
        return this.f17397f;
    }

    @Override // w1.h
    public final long j(j jVar) throws IOException {
        Uri uri = jVar.f17367a;
        long j10 = jVar.f17371e;
        this.f17397f = uri;
        m();
        try {
            String path = uri.getPath();
            path.getClass();
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            this.f17396e = randomAccessFile;
            try {
                randomAccessFile.seek(j10);
                long length = jVar.f17372f;
                if (length == -1) {
                    length = this.f17396e.length() - j10;
                }
                this.f17398g = length;
                if (length < 0) {
                    throw new n(null, null, 2008);
                }
                this.f17399h = true;
                n(jVar);
                return this.f17398g;
            } catch (IOException e7) {
                throw new n(e7, NoConst.MIN_HEARTBEAT_INTERVAL);
            }
        } catch (FileNotFoundException e10) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new n(e10, (t7.y(e10.getCause()) && t7.i(e10.getCause()).errno == OsConstants.EACCES) ? 2006 : 2005);
            }
            throw new n("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=" + uri.getPath() + ",query=" + uri.getQuery() + ",fragment=" + uri.getFragment(), e10, 1004);
        } catch (SecurityException e11) {
            throw new n(e11, 2006);
        } catch (RuntimeException e12) {
            throw new n(e12, NoConst.MIN_HEARTBEAT_INTERVAL);
        }
    }

    @Override // r1.h
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f17398g;
        if (j10 == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f17396e;
            String str = f0.f15206a;
            int i12 = randomAccessFile.read(bArr, i10, (int) Math.min(j10, i11));
            if (i12 > 0) {
                this.f17398g -= i12;
                k(i12);
            }
            return i12;
        } catch (IOException e7) {
            throw new n(e7, NoConst.MIN_HEARTBEAT_INTERVAL);
        }
    }
}
