package androidx.fragment.app;

/* loaded from: classes.dex */
public class b0 extends RuntimeException {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1210a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b0(int i10, String str, Throwable th2) {
        super(str, th2);
        this.f1210a = i10;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        switch (this.f1210a) {
            case 4:
                return "Chain of Causes for CompositeException In Order Received =>";
            default:
                return super.getMessage();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b0(int i10, Throwable th2) {
        super(th2);
        this.f1210a = i10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b0(String str, int i10) {
        super(str);
        this.f1210a = i10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(byte b10, int i10) {
        super("Context cannot be null");
        this.f1210a = i10;
        switch (i10) {
            case 4:
                break;
            case 9:
                super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
                break;
            default:
                break;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public b0(int i10) {
        String str;
        this.f1210a = 11;
        if (i10 == 1) {
            str = "Player release timed out.";
        } else if (i10 == 2) {
            str = "Setting foreground mode timed out.";
        } else if (i10 != 3) {
            str = "Undefined timeout.";
        } else {
            str = "Detaching surface timed out.";
        }
        super(str);
    }
}
