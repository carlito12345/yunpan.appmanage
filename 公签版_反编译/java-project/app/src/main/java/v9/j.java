package v9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class j implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final InputStream f16711a;

    /* renamed from: b, reason: collision with root package name */
    public final List f16712b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16713c;

    public j(InputStream inputStream, List list, int i10) {
        this.f16713c = i10;
        this.f16711a = inputStream;
        this.f16712b = list;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String a(boolean z) throws IOException {
        boolean z4;
        List list;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f16711a, Charset.forName(HTTP.UTF_8)));
        do {
            String line = bufferedReader.readLine();
            z4 = false;
            if (line != null) {
                int length = line.length();
                int i10 = length - 36;
                boolean zStartsWith = line.startsWith(e.f16690j, i10);
                if (!zStartsWith) {
                    list = this.f16712b;
                    if (list != null) {
                        list.add(line);
                    }
                    z4 = !zStartsWith;
                } else if (length != 36) {
                    line = line.substring(0, i10);
                    list = this.f16712b;
                    if (list != null) {
                    }
                    z4 = !zStartsWith;
                }
            }
        } while (z4);
        if (z) {
            return bufferedReader.readLine();
        }
        return null;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws IOException, NumberFormatException {
        int i10;
        switch (this.f16713c) {
            case 0:
                a(false);
                return null;
            default:
                String strA = a(true);
                if (strA == null) {
                    i10 = 1;
                } else {
                    try {
                        i10 = Integer.parseInt(strA);
                    } catch (NumberFormatException unused) {
                        return 1;
                    }
                }
                return Integer.valueOf(i10);
        }
    }
}
