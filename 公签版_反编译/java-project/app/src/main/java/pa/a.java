package pa;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.hsae.bluetoothsdk.IBluetoothManager;

/* loaded from: classes.dex */
public final class a implements ServiceConnection {
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ag.c.f664b = IBluetoothManager.Stub.asInterface(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        ag.c.f664b = null;
    }
}
