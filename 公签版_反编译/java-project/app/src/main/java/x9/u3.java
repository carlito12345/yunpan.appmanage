package x9;

import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.os.Build;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class u3 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_otg_select, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        UsbDevice usbDevice = (UsbDevice) obj;
        if (usbDevice == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 21) {
            aVar.c(R.id.v_name, "设备" + (i10 + 1) + "：" + usbDevice.getDeviceName());
            return;
        }
        aVar.c(R.id.v_name, "设备" + (i10 + 1) + "：" + usbDevice.getProductName() + "  " + usbDevice.getManufacturerName());
    }
}
