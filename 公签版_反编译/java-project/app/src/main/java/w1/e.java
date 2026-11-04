package w1;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import com.hsae.autosdk.core.NoConst;
import j$.util.Objects;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import u1.f0;

/* loaded from: classes.dex */
public final class e extends c {

    /* renamed from: e, reason: collision with root package name */
    public final ContentResolver f17355e;

    /* renamed from: f, reason: collision with root package name */
    public Uri f17356f;

    /* renamed from: g, reason: collision with root package name */
    public AssetFileDescriptor f17357g;

    /* renamed from: h, reason: collision with root package name */
    public FileInputStream f17358h;

    /* renamed from: i, reason: collision with root package name */
    public long f17359i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f17360j;

    public e(Context context) {
        super(false);
        this.f17355e = context.getContentResolver();
    }

    @Override // w1.h
    public final void close() {
        this.f17356f = null;
        try {
            try {
                FileInputStream fileInputStream = this.f17358h;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f17358h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f17357g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e7) {
                        throw new d(e7, NoConst.MIN_HEARTBEAT_INTERVAL);
                    }
                } finally {
                    this.f17357g = null;
                    if (this.f17360j) {
                        this.f17360j = false;
                        l();
                    }
                }
            } catch (IOException e10) {
                throw new d(e10, NoConst.MIN_HEARTBEAT_INTERVAL);
            }
        } catch (Throwable th2) {
            this.f17358h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f17357g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f17357g = null;
                    if (this.f17360j) {
                        this.f17360j = false;
                        l();
                    }
                    throw th2;
                } catch (IOException e11) {
                    throw new d(e11, NoConst.MIN_HEARTBEAT_INTERVAL);
                }
            } finally {
                this.f17357g = null;
                if (this.f17360j) {
                    this.f17360j = false;
                    l();
                }
            }
        }
    }

    @Override // w1.h
    public final Uri getUri() {
        return this.f17356f;
    }

    @Override // w1.h
    public final long j(j jVar) throws IOException {
        int i10;
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            try {
                Uri uriNormalizeScheme = jVar.f17367a.normalizeScheme();
                this.f17356f = uriNormalizeScheme;
                m();
                boolean zEquals = Objects.equals(uriNormalizeScheme.getScheme(), "content");
                ContentResolver contentResolver = this.f17355e;
                if (zEquals) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                    assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openTypedAssetFileDescriptor(uriNormalizeScheme, "*/*", bundle);
                } else {
                    assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uriNormalizeScheme, "r");
                }
                this.f17357g = assetFileDescriptorOpenAssetFileDescriptor;
                if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                    IOException iOException = new IOException("Could not open file descriptor for: " + uriNormalizeScheme);
                    i10 = NoConst.MIN_HEARTBEAT_INTERVAL;
                    try {
                        throw new d(iOException, NoConst.MIN_HEARTBEAT_INTERVAL);
                    } catch (IOException e7) {
                        e = e7;
                        if (e instanceof FileNotFoundException) {
                            i10 = 2005;
                        }
                        throw new d(e, i10);
                    }
                }
                long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
                this.f17358h = fileInputStream;
                long j10 = jVar.f17371e;
                if (length != -1 && j10 > length) {
                    throw new d(null, 2008);
                }
                long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
                long jSkip = fileInputStream.skip(startOffset + j10) - startOffset;
                if (jSkip != j10) {
                    throw new d(null, 2008);
                }
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size == 0) {
                        this.f17359i = -1L;
                    } else {
                        long jPosition = size - channel.position();
                        this.f17359i = jPosition;
                        if (jPosition < 0) {
                            throw new d(null, 2008);
                        }
                    }
                } else {
                    long j11 = length - jSkip;
                    this.f17359i = j11;
                    if (j11 < 0) {
                        throw new d(null, 2008);
                    }
                }
                long j12 = jVar.f17372f;
                if (j12 != -1) {
                    long j13 = this.f17359i;
                    this.f17359i = j13 == -1 ? j12 : Math.min(j13, j12);
                }
                this.f17360j = true;
                n(jVar);
                return j12 != -1 ? j12 : this.f17359i;
            } catch (IOException e10) {
                e = e10;
                i10 = NoConst.MIN_HEARTBEAT_INTERVAL;
            }
        } catch (d e11) {
            throw e11;
        }
    }

    @Override // r1.h
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f17359i;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e7) {
                throw new d(e7, NoConst.MIN_HEARTBEAT_INTERVAL);
            }
        }
        FileInputStream fileInputStream = this.f17358h;
        String str = f0.f15206a;
        int i12 = fileInputStream.read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        long j11 = this.f17359i;
        if (j11 != -1) {
            this.f17359i = j11 - i12;
        }
        k(i12);
        return i12;
    }
}
