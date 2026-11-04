package com.carlito.probe;

import android.app.*;
import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.os.*;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

/** A disposable app for exercising the real ART loader, Context and JNI on API 28+. */
public final class Probe {
    private static final String TOKEN="@@TOKEN@@";
    public static native int nativeValue();
    static void check(Context context,String stage){
        try{
            ClassLoader loader=context.getClassLoader();
            if(loader!=Probe.class.getClassLoader())throw new AssertionError("Context loader differs");
            if(loader.loadClass("com.carlito.probe.Extra")!=Extra.class||Extra.value()!=256)throw new AssertionError("Secondary DEX unavailable");
            if(!context.getPackageName().equals(context.getApplicationInfo().packageName))throw new AssertionError("Context identity differs");
            System.loadLibrary("loader_probe");
            if(nativeValue()!=256)throw new AssertionError("JNI result differs");
            Log.i("AES_RUNTIME_PROBE",TOKEN+" PASS "+stage+" API="+Build.VERSION.SDK_INT+" LOADER="+loader.getClass().getName());
        }catch(Throwable error){Log.e("AES_RUNTIME_PROBE",TOKEN+" FAIL "+stage,error);throw new IllegalStateException(stage,error);}
    }
    public static class OriginalFactory extends AppComponentFactory {
        @Override public Application instantiateApplication(ClassLoader cl,String name)throws ClassNotFoundException,IllegalAccessException,InstantiationException{
            Log.i("AES_RUNTIME_PROBE",TOKEN+" PASS original-factory");return super.instantiateApplication(cl,name);
        }
    }
    public static class App extends Application {
        @Override protected void attachBaseContext(Context context){super.attachBaseContext(context);check(this,"attach");}
        @Override public void onCreate(){super.onCreate();check(this,"application");}
    }
    public static class Screen extends Activity {
        @Override public void onCreate(Bundle state){
            super.onCreate(state);check(this,"activity");
            setContentView(getResources().getIdentifier("probe","layout",getPackageName()));
            if(!(findViewById(getResources().getIdentifier("widget","id",getPackageName())) instanceof Widget))throw new AssertionError("XML custom view missing");
            Log.i("AES_RUNTIME_PROBE",TOKEN+" PASS xml-inflation");
            startService(new Intent(this,Worker.class));
            sendBroadcast(new Intent(this,Receiver.class));
        }
    }
    public static class Widget extends View {
        public Widget(Context context,AttributeSet attrs){super(context,attrs);check(context,"custom-view");}
    }
    public static class Worker extends Service {
        @Override public int onStartCommand(Intent i,int flags,int id){check(this,"service-process");stopSelf(id);return START_NOT_STICKY;}
        @Override public IBinder onBind(Intent i){return null;}
    }
    public static class Receiver extends BroadcastReceiver {
        @Override public void onReceive(Context context,Intent intent){check(context,"receiver-process");}
    }
    public static class Provider extends ContentProvider {
        @Override public boolean onCreate(){check(getContext(),"provider");return true;}
        @Override public Cursor query(Uri uri,String[] p,String s,String[] a,String o){return null;}
        @Override public String getType(Uri uri){return null;}
        @Override public Uri insert(Uri uri,ContentValues v){return null;}
        @Override public int delete(Uri uri,String s,String[] a){return 0;}
        @Override public int update(Uri uri,ContentValues v,String s,String[] a){return 0;}
    }
}
