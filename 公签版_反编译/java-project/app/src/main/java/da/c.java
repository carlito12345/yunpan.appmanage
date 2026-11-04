package da;

import android.app.Activity;
import java.io.PrintStream;
import me.jessyan.autosize.AutoSizeConfig;
import me.jessyan.autosize.onAdaptListener;
import me.jessyan.autosize.utils.ScreenUtils;

/* loaded from: classes.dex */
public final class c implements onAdaptListener {
    @Override // me.jessyan.autosize.onAdaptListener
    public final void onAdaptBefore(Object obj, Activity activity) {
        AutoSizeConfig.getInstance().setScreenWidth(ScreenUtils.getScreenSize(activity)[0]);
        AutoSizeConfig.getInstance().setScreenHeight(ScreenUtils.getScreenSize(activity)[1]);
        PrintStream printStream = System.out;
        AutoSizeConfig.getInstance().getScreenWidth();
        AutoSizeConfig.getInstance().getScreenHeight();
        printStream.getClass();
    }

    @Override // me.jessyan.autosize.onAdaptListener
    public final void onAdaptAfter(Object obj, Activity activity) {
    }
}
