package e9;

import gf.g;
import nh.b;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public abstract class a extends b {
    public a() {
        new g(23);
    }

    @Override // f9.a
    public final Object t(Response response) {
        ResponseBody responseBodyBody = response.body();
        String strString = responseBodyBody == null ? null : responseBodyBody.string();
        response.close();
        return strString;
    }
}
