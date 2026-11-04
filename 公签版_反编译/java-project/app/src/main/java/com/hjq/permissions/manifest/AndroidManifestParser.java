package com.hjq.permissions.manifest;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.XmlResourceParser;
import com.hjq.permissions.manifest.node.ActivityManifestInfo;
import com.hjq.permissions.manifest.node.ApplicationManifestInfo;
import com.hjq.permissions.manifest.node.BroadcastReceiverManifestInfo;
import com.hjq.permissions.manifest.node.IntentFilterManifestInfo;
import com.hjq.permissions.manifest.node.MetaDataManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.manifest.node.ServiceManifestInfo;
import com.hjq.permissions.manifest.node.UsesSdkManifestInfo;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class AndroidManifestParser {
    private static final String ANDROID_MANIFEST_FILE_NAME = "AndroidManifest.xml";
    private static final String ANDROID_NAMESPACE_URI = "http://schemas.android.com/apk/res/android";
    private static final String ATTR_MAX_SDK_VERSION = "maxSdkVersion";
    private static final String ATTR_MIN_SDK_VERSION = "minSdkVersion";
    private static final String ATTR_NAME = "name";
    private static final String ATTR_PACKAGE = "package";
    private static final String ATTR_PERMISSION = "permission";
    private static final String ATTR_REQUEST_LEGACY_EXTERNAL_STORAGE = "requestLegacyExternalStorage";
    private static final String ATTR_RESOURCE = "resource";
    private static final String ATTR_SUPPORTS_PICTURE_IN_PICTURE = "supportsPictureInPicture";
    private static final String ATTR_USES_PERMISSION_FLAGS = "usesPermissionFlags";
    private static final String ATTR_VALUE = "value";
    private static final String TAG_ACTION = "action";
    private static final String TAG_ACTIVITY = "activity";
    private static final String TAG_ACTIVITY_ALIAS = "activity-alias";
    private static final String TAG_APPLICATION = "application";
    private static final String TAG_CATEGORY = "category";
    private static final String TAG_INTENT_FILTER = "intent-filter";
    private static final String TAG_MANIFEST = "manifest";
    private static final String TAG_META_DATA = "meta-data";
    private static final String TAG_QUERIES = "queries";
    private static final String TAG_RECEIVER = "receiver";
    private static final String TAG_SERVICE = "service";
    private static final String TAG_USES_PERMISSION = "uses-permission";
    private static final String TAG_USES_PERMISSION_SDK_23 = "uses-permission-sdk-23";
    private static final String TAG_USES_PERMISSION_SDK_M = "uses-permission-sdk-m";
    private static final String TAG_USES_SDK = "uses-sdk";

    private AndroidManifestParser() {
    }

    @SuppressLint({"PrivateApi"})
    public static int findApkPathCookie(Context context, String str) throws NoSuchMethodException, SecurityException {
        AssetManager assets = context.getAssets();
        try {
            if (PermissionVersion.getTargetSdkVersion(context) >= 28 && PermissionVersion.getSdkVersion() >= 28 && PermissionVersion.getSdkVersion() < 30) {
                Method declaredMethod = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
                declaredMethod.setAccessible(true);
                Method method = (Method) declaredMethod.invoke(AssetManager.class, "findCookieForPath", new Class[]{String.class});
                if (method != null) {
                    method.setAccessible(true);
                    Integer num = (Integer) method.invoke(context.getAssets(), str);
                    if (num != null) {
                        return num.intValue();
                    }
                }
            }
            Integer num2 = (Integer) assets.getClass().getDeclaredMethod("addAssetPath", String.class).invoke(assets, str);
            if (num2 != null) {
                return num2.intValue();
            }
        } catch (IllegalAccessException e7) {
            e7.printStackTrace();
        } catch (NoSuchMethodException e10) {
            e10.printStackTrace();
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
        }
        return 0;
    }

    public static AndroidManifestInfo getAndroidManifestInfo(Context context) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        AndroidManifestInfo androidManifest;
        int iFindApkPathCookie = findApkPathCookie(context, context.getApplicationInfo().sourceDir);
        AndroidManifestInfo androidManifestInfo = null;
        if (iFindApkPathCookie == 0) {
            return null;
        }
        try {
            androidManifest = parseAndroidManifest(context, iFindApkPathCookie);
        } catch (IOException e7) {
            e = e7;
        } catch (XmlPullParserException e10) {
            e = e10;
        }
        try {
            if (PermissionUtils.reverseEqualsString(context.getPackageName(), androidManifest.packageName)) {
                return androidManifest;
            }
            return null;
        } catch (IOException | XmlPullParserException e11) {
            e = e11;
            androidManifestInfo = androidManifest;
            e.printStackTrace();
            return androidManifestInfo;
        }
    }

    private static ActivityManifestInfo parseActivityFromXml(XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        ActivityManifestInfo activityManifestInfo = new ActivityManifestInfo();
        String attributeValue = xmlResourceParser.getAttributeValue(ANDROID_NAMESPACE_URI, ATTR_NAME);
        if (attributeValue == null) {
            attributeValue = "";
        }
        activityManifestInfo.name = attributeValue;
        activityManifestInfo.supportsPictureInPicture = xmlResourceParser.getAttributeBooleanValue(ANDROID_NAMESPACE_URI, ATTR_SUPPORTS_PICTURE_IN_PICTURE, false);
        while (true) {
            int next = xmlResourceParser.next();
            String name = xmlResourceParser.getName();
            if (next == 3 && (PermissionUtils.equalsString(TAG_ACTIVITY, name) || PermissionUtils.equalsString(TAG_ACTIVITY_ALIAS, name))) {
                break;
            }
            if (next == 2 && PermissionUtils.equalsString(TAG_INTENT_FILTER, name)) {
                if (activityManifestInfo.intentFilterInfoList == null) {
                    activityManifestInfo.intentFilterInfoList = new ArrayList();
                }
                activityManifestInfo.intentFilterInfoList.add(parseIntentFilterFromXml(xmlResourceParser));
            } else if (next == 2 && PermissionUtils.equalsString(TAG_META_DATA, name)) {
                if (activityManifestInfo.metaDataInfoList == null) {
                    activityManifestInfo.metaDataInfoList = new ArrayList();
                }
                activityManifestInfo.metaDataInfoList.add(parseMetaDataFromXml(xmlResourceParser));
            }
        }
        return activityManifestInfo;
    }

    public static AndroidManifestInfo parseAndroidManifest(Context context, int i10) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        ApplicationManifestInfo applicationManifestInfo;
        AndroidManifestInfo androidManifestInfo = new AndroidManifestInfo();
        XmlResourceParser xmlResourceParserOpenXmlResourceParser = context.getAssets().openXmlResourceParser(i10, "AndroidManifest.xml");
        do {
            try {
                if (xmlResourceParserOpenXmlResourceParser.getEventType() == 2) {
                    String name = xmlResourceParserOpenXmlResourceParser.getName();
                    if (PermissionUtils.equalsString(TAG_MANIFEST, name)) {
                        androidManifestInfo.packageName = parsePackageFromXml(xmlResourceParserOpenXmlResourceParser);
                    }
                    if (PermissionUtils.equalsString(TAG_USES_SDK, name)) {
                        androidManifestInfo.usesSdkInfo = parseUsesSdkFromXml(xmlResourceParserOpenXmlResourceParser);
                    }
                    if (PermissionUtils.equalsString(TAG_USES_PERMISSION, name) || PermissionUtils.equalsString(TAG_USES_PERMISSION_SDK_23, name) || PermissionUtils.equalsString(TAG_USES_PERMISSION_SDK_M, name)) {
                        androidManifestInfo.permissionInfoList.add(parsePermissionFromXml(xmlResourceParserOpenXmlResourceParser));
                    }
                    if (PermissionUtils.equalsString(TAG_QUERIES, name)) {
                        androidManifestInfo.queriesPackageList.add(parsePackageFromXml(xmlResourceParserOpenXmlResourceParser));
                    }
                    if (PermissionUtils.equalsString(TAG_APPLICATION, name)) {
                        androidManifestInfo.applicationInfo = parseApplicationFromXml(xmlResourceParserOpenXmlResourceParser);
                    }
                    if (PermissionUtils.equalsString(TAG_ACTIVITY, name) || PermissionUtils.equalsString(TAG_ACTIVITY_ALIAS, name)) {
                        androidManifestInfo.activityInfoList.add(parseActivityFromXml(xmlResourceParserOpenXmlResourceParser));
                    }
                    if (PermissionUtils.equalsString(TAG_SERVICE, name)) {
                        androidManifestInfo.serviceInfoList.add(parseServerFromXml(xmlResourceParserOpenXmlResourceParser));
                    }
                    if (PermissionUtils.equalsString(TAG_RECEIVER, name)) {
                        androidManifestInfo.receiverInfoList.add(parseBroadcastReceiverFromXml(xmlResourceParserOpenXmlResourceParser));
                    }
                    if (PermissionUtils.equalsString(TAG_META_DATA, name) && (applicationManifestInfo = androidManifestInfo.applicationInfo) != null) {
                        if (applicationManifestInfo.metaDataInfoList == null) {
                            applicationManifestInfo.metaDataInfoList = new ArrayList();
                        }
                        androidManifestInfo.applicationInfo.metaDataInfoList.add(parseMetaDataFromXml(xmlResourceParserOpenXmlResourceParser));
                    }
                }
            } catch (Throwable th2) {
                if (xmlResourceParserOpenXmlResourceParser != null) {
                    try {
                        xmlResourceParserOpenXmlResourceParser.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                }
                throw th2;
            }
        } while (xmlResourceParserOpenXmlResourceParser.next() != 1);
        xmlResourceParserOpenXmlResourceParser.close();
        return androidManifestInfo;
    }

    private static ApplicationManifestInfo parseApplicationFromXml(XmlResourceParser xmlResourceParser) {
        ApplicationManifestInfo applicationManifestInfo = new ApplicationManifestInfo();
        String attributeValue = xmlResourceParser.getAttributeValue(ANDROID_NAMESPACE_URI, ATTR_NAME);
        if (attributeValue == null) {
            attributeValue = "";
        }
        applicationManifestInfo.name = attributeValue;
        applicationManifestInfo.requestLegacyExternalStorage = xmlResourceParser.getAttributeBooleanValue(ANDROID_NAMESPACE_URI, ATTR_REQUEST_LEGACY_EXTERNAL_STORAGE, false);
        return applicationManifestInfo;
    }

    private static BroadcastReceiverManifestInfo parseBroadcastReceiverFromXml(XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        BroadcastReceiverManifestInfo broadcastReceiverManifestInfo = new BroadcastReceiverManifestInfo();
        String attributeValue = xmlResourceParser.getAttributeValue(ANDROID_NAMESPACE_URI, ATTR_NAME);
        if (attributeValue == null) {
            attributeValue = "";
        }
        broadcastReceiverManifestInfo.name = attributeValue;
        broadcastReceiverManifestInfo.permission = xmlResourceParser.getAttributeValue(ANDROID_NAMESPACE_URI, ATTR_PERMISSION);
        while (true) {
            int next = xmlResourceParser.next();
            String name = xmlResourceParser.getName();
            if (next == 3 && PermissionUtils.equalsString(TAG_RECEIVER, name)) {
                return broadcastReceiverManifestInfo;
            }
            if (next == 2 && PermissionUtils.equalsString(TAG_INTENT_FILTER, name)) {
                if (broadcastReceiverManifestInfo.intentFilterInfoList == null) {
                    broadcastReceiverManifestInfo.intentFilterInfoList = new ArrayList();
                }
                broadcastReceiverManifestInfo.intentFilterInfoList.add(parseIntentFilterFromXml(xmlResourceParser));
            } else if (next == 2 && PermissionUtils.equalsString(TAG_META_DATA, name)) {
                if (broadcastReceiverManifestInfo.metaDataInfoList == null) {
                    broadcastReceiverManifestInfo.metaDataInfoList = new ArrayList();
                }
                broadcastReceiverManifestInfo.metaDataInfoList.add(parseMetaDataFromXml(xmlResourceParser));
            }
        }
    }

    private static IntentFilterManifestInfo parseIntentFilterFromXml(XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        IntentFilterManifestInfo intentFilterManifestInfo = new IntentFilterManifestInfo();
        while (true) {
            int next = xmlResourceParser.next();
            String name = xmlResourceParser.getName();
            if (next == 3 && PermissionUtils.equalsString(TAG_INTENT_FILTER, name)) {
                return intentFilterManifestInfo;
            }
            if (next == 2) {
                if (PermissionUtils.equalsString(TAG_ACTION, name)) {
                    intentFilterManifestInfo.actionList.add(xmlResourceParser.getAttributeValue(ANDROID_NAMESPACE_URI, ATTR_NAME));
                } else if (PermissionUtils.equalsString(TAG_CATEGORY, name)) {
                    intentFilterManifestInfo.categoryList.add(xmlResourceParser.getAttributeValue(ANDROID_NAMESPACE_URI, ATTR_NAME));
                }
            }
        }
    }

    private static MetaDataManifestInfo parseMetaDataFromXml(XmlResourceParser xmlResourceParser) {
        MetaDataManifestInfo metaDataManifestInfo = new MetaDataManifestInfo();
        metaDataManifestInfo.name = xmlResourceParser.getAttributeValue(ANDROID_NAMESPACE_URI, ATTR_NAME);
        metaDataManifestInfo.value = xmlResourceParser.getAttributeValue(ANDROID_NAMESPACE_URI, ATTR_VALUE);
        metaDataManifestInfo.resource = xmlResourceParser.getAttributeResourceValue(ANDROID_NAMESPACE_URI, ATTR_RESOURCE, 0);
        return metaDataManifestInfo;
    }

    private static String parsePackageFromXml(XmlResourceParser xmlResourceParser) {
        String attributeValue = xmlResourceParser.getAttributeValue(null, ATTR_PACKAGE);
        return attributeValue != null ? attributeValue : "";
    }

    private static PermissionManifestInfo parsePermissionFromXml(XmlResourceParser xmlResourceParser) {
        PermissionManifestInfo permissionManifestInfo = new PermissionManifestInfo();
        permissionManifestInfo.name = xmlResourceParser.getAttributeValue(ANDROID_NAMESPACE_URI, ATTR_NAME);
        permissionManifestInfo.maxSdkVersion = xmlResourceParser.getAttributeIntValue(ANDROID_NAMESPACE_URI, ATTR_MAX_SDK_VERSION, Integer.MAX_VALUE);
        permissionManifestInfo.usesPermissionFlags = xmlResourceParser.getAttributeIntValue(ANDROID_NAMESPACE_URI, ATTR_USES_PERMISSION_FLAGS, 0);
        return permissionManifestInfo;
    }

    private static ServiceManifestInfo parseServerFromXml(XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        ServiceManifestInfo serviceManifestInfo = new ServiceManifestInfo();
        String attributeValue = xmlResourceParser.getAttributeValue(ANDROID_NAMESPACE_URI, ATTR_NAME);
        if (attributeValue == null) {
            attributeValue = "";
        }
        serviceManifestInfo.name = attributeValue;
        serviceManifestInfo.permission = xmlResourceParser.getAttributeValue(ANDROID_NAMESPACE_URI, ATTR_PERMISSION);
        while (true) {
            int next = xmlResourceParser.next();
            String name = xmlResourceParser.getName();
            if (next == 3 && PermissionUtils.equalsString(TAG_SERVICE, name)) {
                return serviceManifestInfo;
            }
            if (next == 2 && PermissionUtils.equalsString(TAG_INTENT_FILTER, name)) {
                if (serviceManifestInfo.intentFilterInfoList == null) {
                    serviceManifestInfo.intentFilterInfoList = new ArrayList();
                }
                serviceManifestInfo.intentFilterInfoList.add(parseIntentFilterFromXml(xmlResourceParser));
            } else if (next == 2 && PermissionUtils.equalsString(TAG_META_DATA, name)) {
                if (serviceManifestInfo.metaDataInfoList == null) {
                    serviceManifestInfo.metaDataInfoList = new ArrayList();
                }
                serviceManifestInfo.metaDataInfoList.add(parseMetaDataFromXml(xmlResourceParser));
            }
        }
    }

    private static UsesSdkManifestInfo parseUsesSdkFromXml(XmlResourceParser xmlResourceParser) {
        UsesSdkManifestInfo usesSdkManifestInfo = new UsesSdkManifestInfo();
        usesSdkManifestInfo.minSdkVersion = xmlResourceParser.getAttributeIntValue(ANDROID_NAMESPACE_URI, ATTR_MIN_SDK_VERSION, 0);
        return usesSdkManifestInfo;
    }
}
