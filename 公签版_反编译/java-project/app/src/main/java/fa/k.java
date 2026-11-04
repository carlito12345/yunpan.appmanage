package fa;

import io.github.muntashirakon.adb.AdbStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5707a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AdbStream f5708b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BufferedReader f5709c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ LinkedBlockingQueue f5710d;

    public /* synthetic */ k(AdbStream adbStream, BufferedReader bufferedReader, LinkedBlockingQueue linkedBlockingQueue, int i10) {
        this.f5707a = i10;
        this.f5708b = adbStream;
        this.f5709c = bufferedReader;
        this.f5710d = linkedBlockingQueue;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        switch (this.f5707a) {
            case 0:
                BufferedReader bufferedReader = this.f5709c;
                while (true) {
                    AdbStream adbStream = this.f5708b;
                    if (adbStream != null && !adbStream.isClosed()) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            } else {
                                this.f5710d.add(line);
                            }
                        } catch (IOException e7) {
                            e7.printStackTrace();
                            return;
                        }
                    }
                }
                break;
            default:
                BufferedReader bufferedReader2 = this.f5709c;
                while (true) {
                    AdbStream adbStream2 = this.f5708b;
                    if (adbStream2 != null && !adbStream2.isClosed()) {
                        try {
                            String line2 = bufferedReader2.readLine();
                            if (line2 == null) {
                                break;
                            } else {
                                this.f5710d.add(line2);
                            }
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                    }
                }
                break;
        }
    }
}
