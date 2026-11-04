package x9;

import com.yunpan.appmanage.db.AppBean;

/* loaded from: classes.dex */
public final class n3 {

    /* renamed from: a, reason: collision with root package name */
    public final String f18286a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18287b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f18288c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18289d;

    public n3(String str, String str2) {
        this.f18288c = false;
        this.f18289d = false;
        this.f18286a = str;
        this.f18287b = str2;
    }

    public n3(String str, String str2, boolean z, boolean z4) {
        this.f18286a = str;
        this.f18287b = str2;
        this.f18288c = z;
        this.f18289d = z4;
    }

    public n3(AppBean appBean) {
        this.f18288c = false;
        this.f18289d = false;
        this.f18286a = appBean.name;
        this.f18287b = appBean.pack;
        this.f18288c = appBean.isSystem;
    }
}
