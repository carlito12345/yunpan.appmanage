package o5;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import ha.j2;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class e0 implements f5.k {

    /* renamed from: d, reason: collision with root package name */
    public static final f5.h f11589d = new f5.h("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new hf.b(3));

    /* renamed from: e, reason: collision with root package name */
    public static final f5.h f11590e = new f5.h("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new hf.b(4));

    /* renamed from: f, reason: collision with root package name */
    public static final j2 f11591f = new j2(25);

    /* renamed from: g, reason: collision with root package name */
    public static final List f11592g = Collections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    /* renamed from: a, reason: collision with root package name */
    public final d0 f11593a;

    /* renamed from: b, reason: collision with root package name */
    public final i5.c f11594b;

    /* renamed from: c, reason: collision with root package name */
    public final j2 f11595c = f11591f;

    public e0(i5.c cVar, d0 d0Var) {
        this.f11594b = cVar;
        this.f11593a = d0Var;
    }

    @Override // f5.k
    public final h5.z a(Object obj, int i10, int i11, f5.i iVar) throws IOException {
        long jLongValue = ((Long) iVar.c(f11589d)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            throw new IllegalArgumentException(ta.q.j(jLongValue, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "));
        }
        Integer num = (Integer) iVar.c(f11590e);
        if (num == null) {
            num = 2;
        }
        n nVar = (n) iVar.c(n.f11609g);
        if (nVar == null) {
            nVar = n.f11608f;
        }
        n nVar2 = nVar;
        this.f11595c.getClass();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            this.f11593a.C(mediaMetadataRetriever, obj);
            return d.b(c(obj, mediaMetadataRetriever, jLongValue, num.intValue(), i10, i11, nVar2), this.f11594b);
        } finally {
            if (Build.VERSION.SDK_INT >= 29) {
                mediaMetadataRetriever.release();
            } else {
                mediaMetadataRetriever.release();
            }
        }
    }

    @Override // f5.k
    public final boolean b(Object obj, f5.i iVar) {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0155 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0156  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bitmap c(Object obj, MediaMetadataRetriever mediaMetadataRetriever, long j10, int i10, int i11, int i12, n nVar) throws NumberFormatException {
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        MediaExtractor mediaExtractor;
        String str = Build.DEVICE;
        Bitmap bitmapCreateBitmap = null;
        if (str != null && str.matches(".+_cheets|cheets_.+")) {
            try {
            } catch (Throwable unused) {
                mediaExtractor = null;
            }
            if ("video/webm".equals(mediaMetadataRetriever.extractMetadata(12))) {
                mediaExtractor = new MediaExtractor();
                try {
                    this.f11593a.o(mediaExtractor, obj);
                    int trackCount = mediaExtractor.getTrackCount();
                    for (int i18 = 0; i18 < trackCount; i18++) {
                        if ("video/x-vnd.on2.vp8".equals(mediaExtractor.getTrackFormat(i18).getString("mime"))) {
                            mediaExtractor.release();
                            throw new IllegalStateException("Cannot decode VP8 video on CrOS.");
                        }
                    }
                } catch (Throwable unused2) {
                    if (mediaExtractor != null) {
                        mediaExtractor.release();
                    }
                    if (Build.VERSION.SDK_INT >= 27) {
                        try {
                            i15 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
                            i16 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
                            i17 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
                            if (i17 != 90) {
                                i16 = i15;
                                i15 = i16;
                                float fB = nVar.b(i15, i16, i11, i12);
                                bitmapCreateBitmap = mediaMetadataRetriever.getScaledFrameAtTime(j10, i10, Math.round(i15 * fB), Math.round(fB * i16));
                            }
                        } catch (Throwable unused3) {
                        }
                    }
                    if (bitmapCreateBitmap == null) {
                    }
                    if (Build.MODEL.startsWith("Pixel")) {
                        i13 = Build.VERSION.SDK_INT;
                        if (i13 >= 30) {
                            try {
                                String strExtractMetadata = mediaMetadataRetriever.extractMetadata(36);
                                String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(35);
                                i14 = Integer.parseInt(strExtractMetadata);
                                int i19 = Integer.parseInt(strExtractMetadata2);
                                if (i14 == 7) {
                                }
                            } catch (NumberFormatException unused4) {
                            }
                        }
                    }
                    if (bitmapCreateBitmap == null) {
                    }
                }
                mediaExtractor.release();
            }
        }
        if (Build.VERSION.SDK_INT >= 27 && i11 != Integer.MIN_VALUE && i12 != Integer.MIN_VALUE && nVar != n.f11607e) {
            i15 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            i16 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            i17 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (i17 != 90 || i17 == 270) {
                i16 = i15;
                i15 = i16;
            }
            float fB2 = nVar.b(i15, i16, i11, i12);
            bitmapCreateBitmap = mediaMetadataRetriever.getScaledFrameAtTime(j10, i10, Math.round(i15 * fB2), Math.round(fB2 * i16));
        }
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = mediaMetadataRetriever.getFrameAtTime(j10, i10);
        }
        if (Build.MODEL.startsWith("Pixel") || Build.VERSION.SDK_INT != 33) {
            i13 = Build.VERSION.SDK_INT;
            if (i13 >= 30 && i13 < 33) {
                String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(36);
                String strExtractMetadata22 = mediaMetadataRetriever.extractMetadata(35);
                i14 = Integer.parseInt(strExtractMetadata3);
                int i192 = Integer.parseInt(strExtractMetadata22);
                if ((i14 == 7 || i14 == 6) && i192 == 6) {
                    if (Math.abs(Integer.parseInt(mediaMetadataRetriever.extractMetadata(24))) == 180) {
                        Matrix matrix = new Matrix();
                        matrix.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                        bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix, true);
                    }
                }
            }
        } else {
            Iterator it = f11592g.iterator();
            while (it.hasNext()) {
                if (Build.ID.startsWith((String) it.next())) {
                    String strExtractMetadata32 = mediaMetadataRetriever.extractMetadata(36);
                    String strExtractMetadata222 = mediaMetadataRetriever.extractMetadata(35);
                    i14 = Integer.parseInt(strExtractMetadata32);
                    int i1922 = Integer.parseInt(strExtractMetadata222);
                    if (i14 == 7) {
                        if (Math.abs(Integer.parseInt(mediaMetadataRetriever.extractMetadata(24))) == 180) {
                        }
                    } else if (Math.abs(Integer.parseInt(mediaMetadataRetriever.extractMetadata(24))) == 180) {
                    }
                }
            }
        }
        if (bitmapCreateBitmap == null) {
            return bitmapCreateBitmap;
        }
        throw new androidx.fragment.app.b0((byte) 0, 9);
    }
}
