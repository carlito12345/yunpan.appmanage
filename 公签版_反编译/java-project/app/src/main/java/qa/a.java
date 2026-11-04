package qa;

import com.hjq.toast.Toaster;
import com.yunpan.appmanage.ui.ActivityAdb;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13173a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f13174b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f13175c;

    public /* synthetic */ a(String str, String str2, int i10) {
        this.f13173a = i10;
        this.f13174b = str;
        this.f13175c = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d1  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(mc.b bVar) throws IOException {
        ResponseBody responseBodyBody;
        InputStream inputStreamByteStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        FileOutputStream fileOutputStream3;
        String str = this.f13175c;
        String str2 = this.f13174b;
        switch (this.f13173a) {
            case 0:
                File file = new File(str2);
                if (file.exists()) {
                    bVar.b();
                    break;
                } else {
                    Response responseA = new l9.a(str).a();
                    if (responseA != null && responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                        BufferedInputStream bufferedInputStream = null;
                        try {
                            inputStreamByteStream = responseBodyBody.byteStream();
                        } catch (Exception unused) {
                            inputStreamByteStream = null;
                            fileOutputStream = null;
                        }
                        try {
                            fileOutputStream = new FileOutputStream(str2);
                            try {
                                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStreamByteStream);
                                try {
                                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                                    try {
                                        byte[] bArr = new byte[1048576];
                                        while (true) {
                                            int i10 = bufferedInputStream2.read(bArr);
                                            if (i10 == -1) {
                                                q4.a.e(bufferedInputStream2);
                                                q4.a.e(bufferedOutputStream);
                                                q4.a.e(fileOutputStream);
                                                q4.a.e(inputStreamByteStream);
                                                bVar.b();
                                                break;
                                            } else {
                                                bufferedOutputStream.write(bArr, 0, i10);
                                                bufferedOutputStream.flush();
                                            }
                                        }
                                    } catch (Exception unused2) {
                                        fileOutputStream3 = bufferedOutputStream;
                                        bufferedInputStream = bufferedInputStream2;
                                        fileOutputStream2 = fileOutputStream3;
                                        q4.a.e(bufferedInputStream);
                                        q4.a.e(fileOutputStream2);
                                        q4.a.e(fileOutputStream);
                                        q4.a.e(inputStreamByteStream);
                                        if (file.exists()) {
                                            file.delete();
                                        }
                                        android.support.v4.media.session.a.B("下载出错", bVar);
                                        return;
                                    }
                                } catch (Exception unused3) {
                                    fileOutputStream3 = null;
                                }
                            } catch (Exception unused4) {
                                fileOutputStream2 = null;
                            }
                        } catch (Exception unused5) {
                            fileOutputStream = null;
                            fileOutputStream2 = fileOutputStream;
                            q4.a.e(bufferedInputStream);
                            q4.a.e(fileOutputStream2);
                            q4.a.e(fileOutputStream);
                            q4.a.e(inputStreamByteStream);
                            if (file.exists()) {
                            }
                            android.support.v4.media.session.a.B("下载出错", bVar);
                            return;
                        }
                    }
                    android.support.v4.media.session.a.B("下载出错", bVar);
                }
                break;
            default:
                int i11 = ActivityAdb.G;
                if (!u9.d.r("setprop " + str2 + " " + str).l0().q()) {
                    Toaster.show((CharSequence) "失败：无权限");
                    bVar.d(new Exception("修改失败"));
                    break;
                } else {
                    bVar.b();
                    break;
                }
        }
    }
}
