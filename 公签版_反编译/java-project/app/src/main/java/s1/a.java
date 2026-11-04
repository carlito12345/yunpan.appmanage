package s1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import ha.db;
import u1.b0;
import y1.t;

/* loaded from: classes.dex */
public final class a extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final t f13873a;

    /* renamed from: b, reason: collision with root package name */
    public final b0 f13874b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ androidx.room.i f13875c;

    public a(androidx.room.i iVar, b0 b0Var, t tVar) {
        this.f13875c = iVar;
        this.f13874b = b0Var;
        this.f13873a = tVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            this.f13874b.d(new db(14, this));
        }
    }
}
