package ha;

import android.speech.tts.UtteranceProgressListener;

/* loaded from: classes.dex */
public final class fe extends UtteranceProgressListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7059a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7060b;

    public /* synthetic */ fe(int i10, Object obj) {
        this.f7059a = i10;
        this.f7060b = obj;
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public final void onDone(String str) {
        switch (this.f7059a) {
            case 0:
                ((ge) this.f7060b).d();
                break;
            default:
                ((wa.s) this.f7060b).q();
                break;
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public final void onError(String str) {
        switch (this.f7059a) {
            case 0:
                ((ge) this.f7060b).d();
                break;
            default:
                ((wa.s) this.f7060b).q();
                break;
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public final void onStart(String str) {
        int i10 = this.f7059a;
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public final void onStop(String str, boolean z) {
        switch (this.f7059a) {
            case 0:
                ((ge) this.f7060b).d();
                break;
            default:
                ((wa.s) this.f7060b).q();
                break;
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public final void onError(String str, int i10) {
        switch (this.f7059a) {
            case 0:
                ((ge) this.f7060b).d();
                break;
            default:
                ((wa.s) this.f7060b).q();
                break;
        }
    }

    private final void a(String str) {
    }

    private final void b(String str) {
    }
}
