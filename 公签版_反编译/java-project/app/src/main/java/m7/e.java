package m7;

import android.content.Context;
import android.graphics.Path;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Trace;
import android.view.Surface;
import androidx.fragment.app.g1;
import androidx.lifecycle.r0;
import androidx.lifecycle.u0;
import h5.y;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import l2.c0;

/* loaded from: classes.dex */
public class e implements u0, b6.a, bc.b, com.bumptech.glide.manager.l, d2.m, f5.g, g3.g {

    /* renamed from: b, reason: collision with root package name */
    public static e f10901b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile e f10902c;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10903a;

    public /* synthetic */ e(int i10) {
        this.f10903a = i10;
    }

    public static MediaCodec h(ba.i iVar) throws IOException {
        d2.q qVar = (d2.q) iVar.f2698a;
        StringBuilder sb2 = new StringBuilder("createCodec:");
        String str = qVar.f4294a;
        sb2.append(str);
        Trace.beginSection(sb2.toString());
        MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
        Trace.endSection();
        return mediaCodecCreateByCodecName;
    }

    public static Path i(float f10, float f11, float f12, float f13) {
        Path path = new Path();
        path.moveTo(f10, f11);
        path.lineTo(f12, f13);
        return path;
    }

    @Override // androidx.lifecycle.u0
    public r0 b(Class cls) {
        return new g1(true);
    }

    @Override // g3.g
    public long c(l2.l lVar) {
        return -1L;
    }

    @Override // b6.a
    public Object create() {
        switch (this.f10903a) {
            case 9:
                return new ArrayList();
            default:
                return new y();
        }
    }

    @Override // g3.g
    public c0 d() {
        return new l2.s(-9223372036854775807L);
    }

    @Override // androidx.lifecycle.u0
    public r0 e(Class cls, p1.c cVar) {
        return b(cls);
    }

    public com.bumptech.glide.p g(com.bumptech.glide.b bVar, com.bumptech.glide.manager.g gVar, com.bumptech.glide.manager.l lVar, Context context) {
        switch (this.f10903a) {
            case 13:
                return new la.d(bVar, gVar, lVar, context);
            default:
                return new com.bumptech.glide.p(bVar, gVar, lVar, context);
        }
    }

    public boolean j(CharSequence charSequence) {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004b  */
    @Override // d2.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public d2.n s(ba.i iVar) throws Throwable {
        MediaCodec mediaCodecH = null;
        try {
            mediaCodecH = h(iVar);
            Trace.beginSection("configureCodec");
            Surface surface = (Surface) iVar.f2701d;
            mediaCodecH.configure((MediaFormat) iVar.f2699b, surface, (MediaCrypto) iVar.f2702e, (surface == null && ((d2.q) iVar.f2698a).f4301h && Build.VERSION.SDK_INT >= 35) ? 8 : 0);
            Trace.endSection();
            Trace.beginSection("startCodec");
            mediaCodecH.start();
            Trace.endSection();
            return new a2.g1(mediaCodecH, (v3.f) iVar.f2703f);
        } catch (IOException e7) {
            e = e7;
            if (mediaCodecH != null) {
                mediaCodecH.release();
            }
            throw e;
        } catch (RuntimeException e10) {
            e = e10;
            if (mediaCodecH != null) {
            }
            throw e;
        }
    }

    @Override // bc.b
    public String[] v() {
        switch (this.f10903a) {
            case 10:
                return new String[]{"CLIPBOARD"};
            case 11:
                return new String[]{"TM_CURRENT_LINE", "TM_LINE_INDEX", "TM_LINE_NUMBER", "CURSOR_INDEX", "CURSOR_NUMBER", "TM_CURRENT_WORD", "SELECTION", "TM_SELECTED_TEXT"};
            default:
                return new String[]{"CURRENT_YEAR", "CURRENT_YEAR_SHORT", "CURRENT_MONTH", "CURRENT_DATE", "CURRENT_HOUR", "CURRENT_MINUTE", "CURRENT_SECOND", "CURRENT_DAY_NAME", "CURRENT_DAY_NAME_SHORT", "CURRENT_MONTH_NAME", "CURRENT_MONTH_NAME_SHORT", "CURRENT_SECONDS_UNIX"};
        }
    }

    public e(ArrayList arrayList) {
        this.f10903a = 8;
        Collections.unmodifiableList(arrayList);
    }

    @Override // g3.g
    public void f(long j10) {
    }

    @Override // f5.g
    public void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
    }
}
