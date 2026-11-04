package s5;

import a2.k1;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import f5.k;
import h5.z;
import ha.l2;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a implements k {

    /* renamed from: f, reason: collision with root package name */
    public static final l2 f14410f = new l2(29);

    /* renamed from: g, reason: collision with root package name */
    public static final j5.c f14411g = new j5.c(2);

    /* renamed from: a, reason: collision with root package name */
    public final Context f14412a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f14413b;

    /* renamed from: c, reason: collision with root package name */
    public final j5.c f14414c;

    /* renamed from: d, reason: collision with root package name */
    public final l2 f14415d;

    /* renamed from: e, reason: collision with root package name */
    public final kf.d f14416e;

    public a(Context context, ArrayList arrayList, i5.c cVar, k1 k1Var) {
        l2 l2Var = f14410f;
        this.f14412a = context.getApplicationContext();
        this.f14413b = arrayList;
        this.f14415d = l2Var;
        this.f14416e = new kf.d(cVar, 17, k1Var);
        this.f14414c = f14411g;
    }

    @Override // f5.k
    public final z a(Object obj, int i10, int i11, f5.i iVar) {
        e5.c cVar;
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        j5.c cVar2 = this.f14414c;
        synchronized (cVar2) {
            try {
                e5.c cVar3 = (e5.c) cVar2.f9754a.poll();
                if (cVar3 == null) {
                    cVar3 = new e5.c();
                }
                cVar = cVar3;
                cVar.f4794b = null;
                Arrays.fill(cVar.f4793a, (byte) 0);
                cVar.f4795c = new e5.b();
                cVar.f4796d = 0;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                cVar.f4794b = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                cVar.f4794b.order(ByteOrder.LITTLE_ENDIAN);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        try {
            return c(byteBuffer, i10, i11, cVar, iVar);
        } finally {
            this.f14414c.c(cVar);
        }
    }

    @Override // f5.k
    public final boolean b(Object obj, f5.i iVar) {
        return !((Boolean) iVar.c(h.f14452b)).booleanValue() && android.support.v4.media.session.b.o(this.f14413b, (ByteBuffer) obj) == ImageHeaderParser$ImageType.GIF;
    }

    public final q5.b c(ByteBuffer byteBuffer, int i10, int i11, e5.c cVar, f5.i iVar) {
        int i12 = a6.k.f434a;
        SystemClock.elapsedRealtimeNanos();
        try {
            e5.b bVarB = cVar.b();
            if (bVarB.f4784c > 0 && bVarB.f4783b == 0) {
                Bitmap.Config config = iVar.c(h.f14451a) == f5.b.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int iMin = Math.min(bVarB.f4788g / i11, bVarB.f4787f / i10);
                int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
                l2 l2Var = this.f14415d;
                kf.d dVar = this.f14416e;
                l2Var.getClass();
                e5.d dVar2 = new e5.d(dVar, bVarB, byteBuffer, iMax);
                dVar2.c(config);
                dVar2.f4807k = (dVar2.f4807k + 1) % dVar2.l.f4784c;
                Bitmap bitmapB = dVar2.b();
                if (bitmapB == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        SystemClock.elapsedRealtimeNanos();
                    }
                    return null;
                }
                q5.b bVar = new q5.b(new b(new i4.e(1, new g(com.bumptech.glide.b.b(this.f14412a), dVar2, i10, i11, bitmapB))), 1);
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    SystemClock.elapsedRealtimeNanos();
                }
                return bVar;
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                SystemClock.elapsedRealtimeNanos();
            }
        }
    }
}
