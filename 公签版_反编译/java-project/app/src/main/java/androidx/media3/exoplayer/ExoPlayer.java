package androidx.media3.exoplayer;

import androidx.media3.exoplayer.image.ImageOutput;
import r1.m0;

/* loaded from: classes.dex */
public interface ExoPlayer extends m0 {
    boolean isScrubbingModeEnabled();

    void setImageOutput(ImageOutput imageOutput);

    void setScrubbingModeEnabled(boolean z);
}
