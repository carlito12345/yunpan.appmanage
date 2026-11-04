package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.speech.RecognitionListener;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.view.View;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.regex.Matcher;

/* loaded from: classes.dex */
public final class i0 implements RecognitionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchBar f1648a;

    public i0(SearchBar searchBar) {
        this.f1648a = searchBar;
    }

    @Override // android.speech.RecognitionListener
    public final void onBeginningOfSpeech() {
    }

    @Override // android.speech.RecognitionListener
    public final void onBufferReceived(byte[] bArr) {
    }

    @Override // android.speech.RecognitionListener
    public final void onEndOfSpeech() {
    }

    @Override // android.speech.RecognitionListener
    public final void onError(int i10) {
        switch (i10) {
            case 1:
                int i11 = SearchBar.z;
                break;
            case 2:
                int i12 = SearchBar.z;
                break;
            case 3:
                int i13 = SearchBar.z;
                break;
            case 4:
                int i14 = SearchBar.z;
                break;
            case 5:
                int i15 = SearchBar.z;
                break;
            case 6:
                int i16 = SearchBar.z;
                break;
            case 7:
                int i17 = SearchBar.z;
                break;
            case 8:
                int i18 = SearchBar.z;
                break;
            case 9:
                int i19 = SearchBar.z;
                break;
            default:
                int i20 = SearchBar.z;
                break;
        }
        SearchBar searchBar = this.f1648a;
        searchBar.b();
        searchBar.f1556h.post(new androidx.emoji2.text.j(R.raw.lb_voice_failure, 1, searchBar));
    }

    @Override // android.speech.RecognitionListener
    public final void onEvent(int i10, Bundle bundle) {
    }

    @Override // android.speech.RecognitionListener
    public final void onPartialResults(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
        if (stringArrayList == null || stringArrayList.size() == 0) {
            return;
        }
        String str = stringArrayList.get(0);
        String str2 = stringArrayList.size() > 1 ? stringArrayList.get(1) : null;
        SearchEditText searchEditText = this.f1648a.f1549a;
        searchEditText.getClass();
        if (str == null) {
            str = "";
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        if (str2 != null) {
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) str2);
            Matcher matcher = u0.f1722f.matcher(str2);
            while (matcher.find()) {
                int iStart = matcher.start() + length;
                spannableStringBuilder.setSpan(new t0(searchEditText, str2.charAt(matcher.start()), iStart), iStart, matcher.end() + length, 33);
            }
        }
        searchEditText.f1727d = Math.max(str.length(), searchEditText.f1727d);
        searchEditText.setText(new SpannedString(spannableStringBuilder));
        searchEditText.bringPointIntoView(searchEditText.length());
        ObjectAnimator objectAnimator = searchEditText.f1728e;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        int streamPosition = searchEditText.getStreamPosition();
        int length2 = searchEditText.length();
        int i10 = length2 - streamPosition;
        if (i10 > 0) {
            if (searchEditText.f1728e == null) {
                ObjectAnimator objectAnimator2 = new ObjectAnimator();
                searchEditText.f1728e = objectAnimator2;
                objectAnimator2.setTarget(searchEditText);
                searchEditText.f1728e.setProperty(u0.f1723g);
            }
            searchEditText.f1728e.setIntValues(streamPosition, length2);
            searchEditText.f1728e.setDuration(i10 * 50);
            searchEditText.f1728e.start();
        }
    }

    @Override // android.speech.RecognitionListener
    public final void onReadyForSpeech(Bundle bundle) {
        SearchBar searchBar = this.f1648a;
        SpeechOrbView speechOrbView = searchBar.f1550b;
        speechOrbView.setOrbColors(speechOrbView.f1601v);
        speechOrbView.setOrbIcon(speechOrbView.getResources().getDrawable(R.drawable.lb_ic_search_mic));
        speechOrbView.a(true);
        speechOrbView.f1582m = false;
        speechOrbView.b();
        View view = speechOrbView.f1573c;
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        speechOrbView.f1603x = 0;
        speechOrbView.f1604y = true;
        searchBar.f1556h.post(new androidx.emoji2.text.j(R.raw.lb_voice_open, 1, searchBar));
    }

    @Override // android.speech.RecognitionListener
    public final void onResults(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
        SearchBar searchBar = this.f1648a;
        if (stringArrayList != null) {
            String str = stringArrayList.get(0);
            searchBar.f1552d = str;
            searchBar.f1549a.setText(str);
            TextUtils.isEmpty(searchBar.f1552d);
        }
        searchBar.b();
        searchBar.f1556h.post(new androidx.emoji2.text.j(R.raw.lb_voice_success, 1, searchBar));
    }

    @Override // android.speech.RecognitionListener
    public final void onRmsChanged(float f10) {
        this.f1648a.f1550b.setSoundLevel(f10 < 0.0f ? 0 : (int) (f10 * 10.0f));
    }
}
