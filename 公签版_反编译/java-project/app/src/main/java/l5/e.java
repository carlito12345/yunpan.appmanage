package l5;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class e implements com.bumptech.glide.load.data.e {

    /* renamed from: a, reason: collision with root package name */
    public final Resources.Theme f10577a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f10578b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10579c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10580d;

    /* renamed from: e, reason: collision with root package name */
    public Object f10581e;

    public e(Resources.Theme theme, Resources resources, androidx.emoji2.text.n nVar, int i10) {
        this.f10577a = theme;
        this.f10578b = resources;
        this.f10579c = nVar;
        this.f10580d = i10;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (((androidx.emoji2.text.n) this.f10579c).f1122a) {
            case 3:
                return AssetFileDescriptor.class;
            case 4:
                return Drawable.class;
            default:
                return InputStream.class;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() throws IOException {
        Object obj = this.f10581e;
        if (obj != null) {
            try {
                switch (((androidx.emoji2.text.n) this.f10579c).f1122a) {
                    case 3:
                        ((AssetFileDescriptor) obj).close();
                        break;
                    case 4:
                        break;
                    default:
                        ((InputStream) obj).close();
                        break;
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final f5.a c() {
        return f5.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void d(com.bumptech.glide.i iVar, com.bumptech.glide.load.data.d dVar) throws Resources.NotFoundException {
        Object objOpenRawResourceFd;
        try {
            Object obj = this.f10579c;
            Resources.Theme theme = this.f10577a;
            Resources resources = this.f10578b;
            int i10 = this.f10580d;
            androidx.emoji2.text.n nVar = (androidx.emoji2.text.n) obj;
            switch (nVar.f1122a) {
                case 3:
                    objOpenRawResourceFd = resources.openRawResourceFd(i10);
                    break;
                case 4:
                    Context context = nVar.f1123b;
                    objOpenRawResourceFd = d.b.D(context, context, i10, theme);
                    break;
                default:
                    objOpenRawResourceFd = resources.openRawResource(i10);
                    break;
            }
            this.f10581e = objOpenRawResourceFd;
            dVar.B(objOpenRawResourceFd);
        } catch (Resources.NotFoundException e7) {
            dVar.i(e7);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
    }
}
