package w1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.hsae.autosdk.core.NoConst;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.List;
import u1.f0;

/* loaded from: classes.dex */
public final class v extends c {

    /* renamed from: e, reason: collision with root package name */
    public final Context f17404e;

    /* renamed from: f, reason: collision with root package name */
    public j f17405f;

    /* renamed from: g, reason: collision with root package name */
    public AssetFileDescriptor f17406g;

    /* renamed from: h, reason: collision with root package name */
    public FileInputStream f17407h;

    /* renamed from: i, reason: collision with root package name */
    public long f17408i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f17409j;

    public v(Context context) {
        super(false);
        this.f17404e = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i10) {
        return Uri.parse("rawresource:///" + i10);
    }

    @Override // w1.h
    public final void close() {
        this.f17405f = null;
        try {
            try {
                FileInputStream fileInputStream = this.f17407h;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f17407h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f17406g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e7) {
                        throw new u(null, e7, NoConst.MIN_HEARTBEAT_INTERVAL);
                    }
                } finally {
                    this.f17406g = null;
                    if (this.f17409j) {
                        this.f17409j = false;
                        l();
                    }
                }
            } catch (IOException e10) {
                throw new u(null, e10, NoConst.MIN_HEARTBEAT_INTERVAL);
            }
        } catch (Throwable th2) {
            this.f17407h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f17406g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f17406g = null;
                    if (this.f17409j) {
                        this.f17409j = false;
                        l();
                    }
                    throw th2;
                } catch (IOException e11) {
                    throw new u(null, e11, NoConst.MIN_HEARTBEAT_INTERVAL);
                }
            } finally {
                this.f17406g = null;
                if (this.f17409j) {
                    this.f17409j = false;
                    l();
                }
            }
        }
    }

    @Override // w1.h
    public final Uri getUri() {
        j jVar = this.f17405f;
        if (jVar != null) {
            return jVar.f17367a;
        }
        return null;
    }

    @Override // w1.h
    public final long j(j jVar) throws i, Resources.NotFoundException, PackageManager.NameNotFoundException, NumberFormatException {
        Resources resourcesForApplication;
        int identifier;
        int i10;
        Resources resources;
        this.f17405f = jVar;
        m();
        Uri uriNormalizeScheme = jVar.f17367a.normalizeScheme();
        boolean zEquals = TextUtils.equals("rawresource", uriNormalizeScheme.getScheme());
        Context context = this.f17404e;
        if (zEquals) {
            resources = context.getResources();
            List<String> pathSegments = uriNormalizeScheme.getPathSegments();
            if (pathSegments.size() != 1) {
                throw new u("rawresource:// URI must have exactly one path element, found " + pathSegments.size());
            }
            try {
                i10 = Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException unused) {
                throw new u("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (!TextUtils.equals("android.resource", uriNormalizeScheme.getScheme())) {
                throw new u("Unsupported URI scheme (" + uriNormalizeScheme.getScheme() + "). Only android.resource is supported.", null, 1004);
            }
            String path = uriNormalizeScheme.getPath();
            path.getClass();
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            String packageName = TextUtils.isEmpty(uriNormalizeScheme.getHost()) ? context.getPackageName() : uriNormalizeScheme.getHost();
            if (packageName.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(packageName);
                } catch (PackageManager.NameNotFoundException e7) {
                    throw new u("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e7, 2005);
                }
            }
            if (path.matches("\\d+")) {
                try {
                    identifier = Integer.parseInt(path);
                } catch (NumberFormatException unused2) {
                    throw new u("Resource identifier must be an integer.", null, 1004);
                }
            } else {
                identifier = resourcesForApplication.getIdentifier(g.b.k(packageName, ":", path), "raw", null);
                if (identifier == 0) {
                    throw new u("Resource not found.", null, 2005);
                }
            }
            i10 = identifier;
            resources = resourcesForApplication;
        }
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = resources.openRawResourceFd(i10);
            if (assetFileDescriptorOpenRawResourceFd == null) {
                throw new u("Resource is compressed: " + uriNormalizeScheme, null, NoConst.MIN_HEARTBEAT_INTERVAL);
            }
            this.f17406g = assetFileDescriptorOpenRawResourceFd;
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(this.f17406g.getFileDescriptor());
            this.f17407h = fileInputStream;
            long j10 = jVar.f17371e;
            try {
                if (length != -1 && j10 > length) {
                    throw new u(null, null, 2008);
                }
                long startOffset = this.f17406g.getStartOffset();
                long jSkip = fileInputStream.skip(startOffset + j10) - startOffset;
                if (jSkip != j10) {
                    throw new u(null, null, 2008);
                }
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    if (channel.size() == 0) {
                        this.f17408i = -1L;
                    } else {
                        long size = channel.size() - channel.position();
                        this.f17408i = size;
                        if (size < 0) {
                            throw new u(null, null, 2008);
                        }
                    }
                } else {
                    long j11 = length - jSkip;
                    this.f17408i = j11;
                    if (j11 < 0) {
                        throw new i(2008);
                    }
                }
                long j12 = jVar.f17372f;
                if (j12 != -1) {
                    long j13 = this.f17408i;
                    this.f17408i = j13 == -1 ? j12 : Math.min(j13, j12);
                }
                this.f17409j = true;
                n(jVar);
                return j12 != -1 ? j12 : this.f17408i;
            } catch (u e10) {
                throw e10;
            } catch (IOException e11) {
                throw new u(null, e11, NoConst.MIN_HEARTBEAT_INTERVAL);
            }
        } catch (Resources.NotFoundException e12) {
            throw new u(null, e12, 2005);
        }
    }

    @Override // r1.h
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f17408i;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e7) {
                throw new u(null, e7, NoConst.MIN_HEARTBEAT_INTERVAL);
            }
        }
        FileInputStream fileInputStream = this.f17407h;
        String str = f0.f15206a;
        int i12 = fileInputStream.read(bArr, i10, i11);
        if (i12 == -1) {
            if (this.f17408i == -1) {
                return -1;
            }
            throw new u("End of stream reached having not read sufficient data.", new EOFException(), NoConst.MIN_HEARTBEAT_INTERVAL);
        }
        long j11 = this.f17408i;
        if (j11 != -1) {
            this.f17408i = j11 - i12;
        }
        k(i12);
        return i12;
    }
}
