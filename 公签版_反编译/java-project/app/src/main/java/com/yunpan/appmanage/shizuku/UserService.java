package com.yunpan.appmanage.shizuku;

import a2.c0;
import android.os.Build;
import android.os.RemoteException;
import com.yunpan.appmanage.shizuku.IUserService;
import fg.b;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class UserService extends IUserService.Stub {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$exec$0(Process process, CmdResult cmdResult) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        return;
                    }
                    cmdResult.lists.add(line);
                } catch (Throwable th2) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            }
        } catch (IOException e7) {
            e7.printStackTrace();
        }
    }

    @Override // com.yunpan.appmanage.shizuku.IUserService
    public void destroy() {
        System.exit(0);
    }

    @Override // com.yunpan.appmanage.shizuku.IUserService
    public CmdResult exec(String str, long j10) throws InterruptedException, IOException, RemoteException {
        CmdResult cmdResult = new CmdResult();
        try {
            ProcessBuilder processBuilder = new ProcessBuilder("/system/bin/sh", "-c", str);
            processBuilder.redirectErrorStream(true);
            Process processStart = processBuilder.start();
            b bVar = new b(new c0(processStart, 11, cmdResult), 1);
            bVar.start();
            if (Build.VERSION.SDK_INT < 26) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (bVar.isAlive() && System.currentTimeMillis() - jCurrentTimeMillis < j10) {
                    Thread.sleep(333L);
                }
                if (bVar.isAlive()) {
                    bVar.interrupt();
                    processStart.destroy();
                    throw new RemoteException("执行命令超时");
                }
            } else if (!processStart.waitFor(j10, TimeUnit.MILLISECONDS)) {
                processStart.destroyForcibly();
                bVar.interrupt();
                throw new RemoteException("执行命令超时");
            }
            bVar.join(1000L);
            cmdResult.code = processStart.exitValue();
        } catch (Exception e7) {
            cmdResult.lists.add(e7.getMessage());
        }
        return cmdResult;
    }

    @Override // com.yunpan.appmanage.shizuku.IUserService
    public void exit() {
        destroy();
    }
}
