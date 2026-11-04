package com.hjq.permissions.permission;

import a0.m;
import android.accessibilityservice.AccessibilityService;
import android.app.admin.DeviceAdminReceiver;
import android.service.notification.NotificationListenerService;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.dangerous.AccessBackgroundLocationPermission;
import com.hjq.permissions.permission.dangerous.AccessLocalNetworkPermission;
import com.hjq.permissions.permission.dangerous.AccessMediaLocationPermission;
import com.hjq.permissions.permission.dangerous.BluetoothAdvertisePermission;
import com.hjq.permissions.permission.dangerous.BluetoothConnectPermission;
import com.hjq.permissions.permission.dangerous.BluetoothScanPermission;
import com.hjq.permissions.permission.dangerous.BodySensorsBackgroundPermission;
import com.hjq.permissions.permission.dangerous.BodySensorsPermission;
import com.hjq.permissions.permission.dangerous.GetInstalledAppsPermission;
import com.hjq.permissions.permission.dangerous.NearbyWifiDevicesPermission;
import com.hjq.permissions.permission.dangerous.PostNotificationsPermission;
import com.hjq.permissions.permission.dangerous.ReadExternalStoragePermission;
import com.hjq.permissions.permission.dangerous.ReadHealthDataHistoryPermission;
import com.hjq.permissions.permission.dangerous.ReadHealthDataInBackgroundPermission;
import com.hjq.permissions.permission.dangerous.ReadHealthRatePermission;
import com.hjq.permissions.permission.dangerous.ReadMediaAudioPermission;
import com.hjq.permissions.permission.dangerous.ReadMediaImagesPermission;
import com.hjq.permissions.permission.dangerous.ReadMediaVideoPermission;
import com.hjq.permissions.permission.dangerous.ReadMediaVisualUserSelectedPermission;
import com.hjq.permissions.permission.dangerous.ReadPhoneNumbersPermission;
import com.hjq.permissions.permission.dangerous.StandardDangerousPermission;
import com.hjq.permissions.permission.dangerous.StandardFitnessAndWellnessDataPermission;
import com.hjq.permissions.permission.dangerous.StandardHealthRecordsPermission;
import com.hjq.permissions.permission.dangerous.WriteExternalStoragePermission;
import com.hjq.permissions.permission.special.AccessNotificationPolicyPermission;
import com.hjq.permissions.permission.special.BindAccessibilityServicePermission;
import com.hjq.permissions.permission.special.BindDeviceAdminPermission;
import com.hjq.permissions.permission.special.BindNotificationListenerServicePermission;
import com.hjq.permissions.permission.special.BindVpnServicePermission;
import com.hjq.permissions.permission.special.ManageExternalStoragePermission;
import com.hjq.permissions.permission.special.ManageMediaPermission;
import com.hjq.permissions.permission.special.NotificationServicePermission;
import com.hjq.permissions.permission.special.PackageUsageStatsPermission;
import com.hjq.permissions.permission.special.PictureInPicturePermission;
import com.hjq.permissions.permission.special.RequestIgnoreBatteryOptimizationsPermission;
import com.hjq.permissions.permission.special.RequestInstallPackagesPermission;
import com.hjq.permissions.permission.special.ScheduleExactAlarmPermission;
import com.hjq.permissions.permission.special.SystemAlertWindowPermission;
import com.hjq.permissions.permission.special.UseFullScreenIntentPermission;
import com.hjq.permissions.permission.special.WriteSettingsPermission;
import com.hjq.permissions.tools.PermissionVersion;

/* loaded from: classes.dex */
public final class PermissionLists {
    private static final m PERMISSION_CACHE_MAP = new m(151);
    private static final int PERMISSION_COUNT = 151;

    private PermissionLists() {
    }

    public static IPermission getAcceptHandoverPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.ACCEPT_HANDOVER);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.ACCEPT_HANDOVER, PermissionGroups.PHONE, 28));
    }

    public static IPermission getAccessBackgroundLocationPermission() {
        IPermission cachePermission = getCachePermission("android.permission.ACCESS_BACKGROUND_LOCATION");
        return cachePermission != null ? cachePermission : putCachePermission(new AccessBackgroundLocationPermission());
    }

    public static IPermission getAccessCoarseLocationPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.ACCESS_COARSE_LOCATION);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.ACCESS_COARSE_LOCATION, PermissionGroups.LOCATION, 23));
    }

    public static IPermission getAccessFineLocationPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.ACCESS_FINE_LOCATION);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.ACCESS_FINE_LOCATION, PermissionGroups.LOCATION, 23));
    }

    public static IPermission getAccessLocalNetworkPermission() {
        IPermission cachePermission = getCachePermission("android.permission.ACCESS_LOCAL_NETWORK");
        return cachePermission != null ? cachePermission : putCachePermission(new AccessLocalNetworkPermission());
    }

    public static IPermission getAccessMediaLocationPermission() {
        IPermission cachePermission = getCachePermission("android.permission.ACCESS_MEDIA_LOCATION");
        return cachePermission != null ? cachePermission : putCachePermission(new AccessMediaLocationPermission());
    }

    public static IPermission getAccessNotificationPolicyPermission() {
        IPermission cachePermission = getCachePermission("android.permission.ACCESS_NOTIFICATION_POLICY");
        return cachePermission != null ? cachePermission : putCachePermission(new AccessNotificationPolicyPermission());
    }

    public static IPermission getActivityRecognitionPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.ACTIVITY_RECOGNITION);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.ACTIVITY_RECOGNITION, 29));
    }

    public static IPermission getAddVoicemailPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.ADD_VOICEMAIL);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.ADD_VOICEMAIL, PermissionGroups.PHONE, 23));
    }

    public static IPermission getAnswerPhoneCallsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.ANSWER_PHONE_CALLS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.ANSWER_PHONE_CALLS, PermissionGroups.PHONE, 26));
    }

    public static IPermission getBindAccessibilityServicePermission(Class<? extends AccessibilityService> cls) {
        return new BindAccessibilityServicePermission(cls);
    }

    public static IPermission getBindDeviceAdminPermission(Class<? extends DeviceAdminReceiver> cls, String str) {
        return new BindDeviceAdminPermission(cls, str);
    }

    public static IPermission getBindNotificationListenerServicePermission(Class<? extends NotificationListenerService> cls) {
        return new BindNotificationListenerServicePermission(cls);
    }

    public static IPermission getBindVpnServicePermission() {
        IPermission cachePermission = getCachePermission("android.permission.BIND_VPN_SERVICE");
        return cachePermission != null ? cachePermission : putCachePermission(new BindVpnServicePermission());
    }

    public static IPermission getBluetoothAdvertisePermission() {
        IPermission cachePermission = getCachePermission("android.permission.BLUETOOTH_ADVERTISE");
        return cachePermission != null ? cachePermission : putCachePermission(new BluetoothAdvertisePermission());
    }

    public static IPermission getBluetoothConnectPermission() {
        IPermission cachePermission = getCachePermission("android.permission.BLUETOOTH_CONNECT");
        return cachePermission != null ? cachePermission : putCachePermission(new BluetoothConnectPermission());
    }

    public static IPermission getBluetoothScanPermission() {
        IPermission cachePermission = getCachePermission("android.permission.BLUETOOTH_SCAN");
        return cachePermission != null ? cachePermission : putCachePermission(new BluetoothScanPermission());
    }

    public static IPermission getBodySensorsBackgroundPermission() {
        IPermission cachePermission = getCachePermission("android.permission.BODY_SENSORS_BACKGROUND");
        return cachePermission != null ? cachePermission : putCachePermission(new BodySensorsBackgroundPermission());
    }

    public static IPermission getBodySensorsPermission() {
        IPermission cachePermission = getCachePermission("android.permission.BODY_SENSORS");
        return cachePermission != null ? cachePermission : putCachePermission(new BodySensorsPermission());
    }

    private static IPermission getCachePermission(String str) {
        return (IPermission) PERMISSION_CACHE_MAP.a(str);
    }

    public static IPermission getCallPhonePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.CALL_PHONE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.CALL_PHONE, PermissionGroups.PHONE, 23));
    }

    public static IPermission getCameraPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.CAMERA);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.CAMERA, 23));
    }

    public static IPermission getGetAccountsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.GET_ACCOUNTS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.GET_ACCOUNTS, PermissionGroups.CONTACTS, 23));
    }

    public static IPermission getGetInstalledAppsPermission() {
        IPermission cachePermission = getCachePermission("com.android.permission.GET_INSTALLED_APPS");
        return cachePermission != null ? cachePermission : putCachePermission(new GetInstalledAppsPermission());
    }

    public static IPermission getManageExternalStoragePermission() {
        IPermission cachePermission = getCachePermission("android.permission.MANAGE_EXTERNAL_STORAGE");
        return cachePermission != null ? cachePermission : putCachePermission(new ManageExternalStoragePermission());
    }

    public static IPermission getManageMediaPermission() {
        IPermission cachePermission = getCachePermission("android.permission.MANAGE_MEDIA");
        return cachePermission != null ? cachePermission : putCachePermission(new ManageMediaPermission());
    }

    public static IPermission getNearbyWifiDevicesPermission() {
        IPermission cachePermission = getCachePermission("android.permission.NEARBY_WIFI_DEVICES");
        return cachePermission != null ? cachePermission : putCachePermission(new NearbyWifiDevicesPermission());
    }

    public static IPermission getNotificationServicePermission(String str) {
        return new NotificationServicePermission(str);
    }

    public static IPermission getPackageUsageStatsPermission() {
        IPermission cachePermission = getCachePermission("android.permission.PACKAGE_USAGE_STATS");
        return cachePermission != null ? cachePermission : putCachePermission(new PackageUsageStatsPermission());
    }

    public static IPermission getPictureInPicturePermission() {
        IPermission cachePermission = getCachePermission("android.permission.PICTURE_IN_PICTURE");
        return cachePermission != null ? cachePermission : putCachePermission(new PictureInPicturePermission());
    }

    public static IPermission getPostNotificationsPermission() {
        IPermission cachePermission = getCachePermission("android.permission.POST_NOTIFICATIONS");
        return cachePermission != null ? cachePermission : putCachePermission(new PostNotificationsPermission());
    }

    public static IPermission getProcessOutgoingCallsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.PROCESS_OUTGOING_CALLS);
        if (cachePermission != null) {
            return cachePermission;
        }
        return putCachePermission(new StandardDangerousPermission(PermissionNames.PROCESS_OUTGOING_CALLS, PermissionVersion.isAndroid9() ? PermissionGroups.CALL_LOG : PermissionGroups.PHONE, 23));
    }

    public static IPermission getReadActiveCaloriesBurnedPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_ACTIVE_CALORIES_BURNED);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_ACTIVE_CALORIES_BURNED, 34));
    }

    public static IPermission getReadActivityIntensityPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_ACTIVITY_INTENSITY);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_ACTIVITY_INTENSITY, 36));
    }

    public static IPermission getReadBasalBodyTemperaturePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_BASAL_BODY_TEMPERATURE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_BASAL_BODY_TEMPERATURE, 34));
    }

    public static IPermission getReadBasalMetabolicRatePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_BASAL_METABOLIC_RATE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_BASAL_METABOLIC_RATE, 34));
    }

    public static IPermission getReadBloodGlucosePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_BLOOD_GLUCOSE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_BLOOD_GLUCOSE, 34));
    }

    public static IPermission getReadBloodPressurePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_BLOOD_PRESSURE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_BLOOD_PRESSURE, 34));
    }

    public static IPermission getReadBodyFatPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_BODY_FAT);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_BODY_FAT, 34));
    }

    public static IPermission getReadBodyTemperaturePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_BODY_TEMPERATURE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_BODY_TEMPERATURE, 34));
    }

    public static IPermission getReadBodyWaterMassPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_BODY_WATER_MASS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_BODY_WATER_MASS, 34));
    }

    public static IPermission getReadBoneMassPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_BONE_MASS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_BONE_MASS, 34));
    }

    public static IPermission getReadCalendarPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_CALENDAR);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.READ_CALENDAR, PermissionGroups.CALENDAR, 23));
    }

    public static IPermission getReadCallLogPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_CALL_LOG);
        if (cachePermission != null) {
            return cachePermission;
        }
        return putCachePermission(new StandardDangerousPermission(PermissionNames.READ_CALL_LOG, PermissionVersion.isAndroid9() ? PermissionGroups.CALL_LOG : PermissionGroups.PHONE, 23));
    }

    public static IPermission getReadCervicalMucusPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_CERVICAL_MUCUS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_CERVICAL_MUCUS, 34));
    }

    public static IPermission getReadContactsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_CONTACTS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.READ_CONTACTS, PermissionGroups.CONTACTS, 23));
    }

    public static IPermission getReadDistancePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_DISTANCE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_DISTANCE, 34));
    }

    public static IPermission getReadElevationGainedPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_ELEVATION_GAINED);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_ELEVATION_GAINED, 34));
    }

    public static IPermission getReadExercisePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_EXERCISE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_EXERCISE, 34));
    }

    public static IPermission getReadExerciseRoutesPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_EXERCISE_ROUTES);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_EXERCISE_ROUTES, 35));
    }

    public static IPermission getReadExternalStoragePermission() {
        IPermission cachePermission = getCachePermission("android.permission.READ_EXTERNAL_STORAGE");
        return cachePermission != null ? cachePermission : putCachePermission(new ReadExternalStoragePermission());
    }

    public static IPermission getReadFloorsClimbedPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_FLOORS_CLIMBED);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_FLOORS_CLIMBED, 34));
    }

    public static IPermission getReadHealthDataHistoryPermission() {
        IPermission cachePermission = getCachePermission("android.permission.health.READ_HEALTH_DATA_HISTORY");
        return cachePermission != null ? cachePermission : putCachePermission(new ReadHealthDataHistoryPermission());
    }

    public static IPermission getReadHealthDataInBackgroundPermission() {
        IPermission cachePermission = getCachePermission("android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND");
        return cachePermission != null ? cachePermission : putCachePermission(new ReadHealthDataInBackgroundPermission());
    }

    public static IPermission getReadHeartRatePermission() {
        IPermission cachePermission = getCachePermission("android.permission.health.READ_HEART_RATE");
        return cachePermission != null ? cachePermission : putCachePermission(new ReadHealthRatePermission());
    }

    public static IPermission getReadHeartRateVariabilityPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_HEART_RATE_VARIABILITY);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_HEART_RATE_VARIABILITY, 34));
    }

    public static IPermission getReadHeightPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_HEIGHT);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_HEIGHT, 34));
    }

    public static IPermission getReadHydrationPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_HYDRATION);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_HYDRATION, 34));
    }

    public static IPermission getReadIntermenstrualBleedingPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_INTERMENSTRUAL_BLEEDING);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_INTERMENSTRUAL_BLEEDING, 34));
    }

    public static IPermission getReadLeanBodyMassPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_LEAN_BODY_MASS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_LEAN_BODY_MASS, 34));
    }

    public static IPermission getReadMediaAudioPermission() {
        IPermission cachePermission = getCachePermission("android.permission.READ_MEDIA_AUDIO");
        return cachePermission != null ? cachePermission : putCachePermission(new ReadMediaAudioPermission());
    }

    public static IPermission getReadMediaImagesPermission() {
        IPermission cachePermission = getCachePermission("android.permission.READ_MEDIA_IMAGES");
        return cachePermission != null ? cachePermission : putCachePermission(new ReadMediaImagesPermission());
    }

    public static IPermission getReadMediaVideoPermission() {
        IPermission cachePermission = getCachePermission("android.permission.READ_MEDIA_VIDEO");
        return cachePermission != null ? cachePermission : putCachePermission(new ReadMediaVideoPermission());
    }

    public static IPermission getReadMediaVisualUserSelectedPermission() {
        IPermission cachePermission = getCachePermission("android.permission.READ_MEDIA_VISUAL_USER_SELECTED");
        return cachePermission != null ? cachePermission : putCachePermission(new ReadMediaVisualUserSelectedPermission());
    }

    public static IPermission getReadMedicalDataAllergiesIntolerancesPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_ALLERGIES_INTOLERANCES);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_ALLERGIES_INTOLERANCES, 36));
    }

    public static IPermission getReadMedicalDataConditionsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_CONDITIONS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_CONDITIONS, 36));
    }

    public static IPermission getReadMedicalDataLaboratoryResultsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_LABORATORY_RESULTS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_LABORATORY_RESULTS, 36));
    }

    public static IPermission getReadMedicalDataMedicationsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_MEDICATIONS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_MEDICATIONS, 36));
    }

    public static IPermission getReadMedicalDataPersonalDetailsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_PERSONAL_DETAILS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_PERSONAL_DETAILS, 36));
    }

    public static IPermission getReadMedicalDataPractitionerDetailsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_PRACTITIONER_DETAILS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_PRACTITIONER_DETAILS, 36));
    }

    public static IPermission getReadMedicalDataPregnancyPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_PREGNANCY);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_PREGNANCY, 36));
    }

    public static IPermission getReadMedicalDataProceduresPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_PROCEDURES);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_PROCEDURES, 36));
    }

    public static IPermission getReadMedicalDataSocialHistoryPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_SOCIAL_HISTORY);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_SOCIAL_HISTORY, 36));
    }

    public static IPermission getReadMedicalDataVaccinesPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_VACCINES);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_VACCINES, 36));
    }

    public static IPermission getReadMedicalDataVisitsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_VISITS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_VISITS, 36));
    }

    public static IPermission getReadMedicalDataVitalSignsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MEDICAL_DATA_VITAL_SIGNS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.READ_MEDICAL_DATA_VITAL_SIGNS, 36));
    }

    public static IPermission getReadMenstruationPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MENSTRUATION);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_MENSTRUATION, 34));
    }

    public static IPermission getReadMindfulnessPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_MINDFULNESS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_MINDFULNESS, 36));
    }

    public static IPermission getReadNutritionPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_NUTRITION);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_NUTRITION, 34));
    }

    public static IPermission getReadOvulationTestPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_OVULATION_TEST);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_OVULATION_TEST, 34));
    }

    public static IPermission getReadOxygenSaturationPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_OXYGEN_SATURATION);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_OXYGEN_SATURATION, 34));
    }

    public static IPermission getReadPhoneNumbersPermission() {
        IPermission cachePermission = getCachePermission("android.permission.READ_PHONE_NUMBERS");
        return cachePermission != null ? cachePermission : putCachePermission(new ReadPhoneNumbersPermission());
    }

    public static IPermission getReadPhoneStatePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_PHONE_STATE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.READ_PHONE_STATE, PermissionGroups.PHONE, 23));
    }

    public static IPermission getReadPlannedExercisePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_PLANNED_EXERCISE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_PLANNED_EXERCISE, 35));
    }

    public static IPermission getReadPowerPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_POWER);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_POWER, 34));
    }

    public static IPermission getReadRespiratoryRatePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_RESPIRATORY_RATE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_RESPIRATORY_RATE, 34));
    }

    public static IPermission getReadRestingHeartRatePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_RESTING_HEART_RATE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_RESTING_HEART_RATE, 34));
    }

    public static IPermission getReadSexualActivityPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_SEXUAL_ACTIVITY);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_SEXUAL_ACTIVITY, 34));
    }

    public static IPermission getReadSkinTemperaturePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_SKIN_TEMPERATURE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_SKIN_TEMPERATURE, 35));
    }

    public static IPermission getReadSleepPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_SLEEP);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_SLEEP, 34));
    }

    public static IPermission getReadSmsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_SMS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.READ_SMS, PermissionGroups.SMS, 23));
    }

    public static IPermission getReadSpeedPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_SPEED);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_SPEED, 34));
    }

    public static IPermission getReadStepsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_STEPS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_STEPS, 34));
    }

    public static IPermission getReadTotalCaloriesBurnedPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_TOTAL_CALORIES_BURNED);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_TOTAL_CALORIES_BURNED, 34));
    }

    public static IPermission getReadVo2MaxPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_VO2_MAX);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_VO2_MAX, 34));
    }

    public static IPermission getReadWeightPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_WEIGHT);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_WEIGHT, 34));
    }

    public static IPermission getReadWheelchairPushesPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.READ_WHEELCHAIR_PUSHES);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.READ_WHEELCHAIR_PUSHES, 34));
    }

    public static IPermission getReceiveMmsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.RECEIVE_MMS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.RECEIVE_MMS, PermissionGroups.SMS, 23));
    }

    public static IPermission getReceiveSmsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.RECEIVE_SMS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.RECEIVE_SMS, PermissionGroups.SMS, 23));
    }

    public static IPermission getReceiveWapPushPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.RECEIVE_WAP_PUSH);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.RECEIVE_WAP_PUSH, PermissionGroups.SMS, 23));
    }

    public static IPermission getRecordAudioPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.RECORD_AUDIO);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.RECORD_AUDIO, 23));
    }

    public static IPermission getRequestIgnoreBatteryOptimizationsPermission() {
        IPermission cachePermission = getCachePermission("android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
        return cachePermission != null ? cachePermission : putCachePermission(new RequestIgnoreBatteryOptimizationsPermission());
    }

    public static IPermission getRequestInstallPackagesPermission() {
        IPermission cachePermission = getCachePermission("android.permission.REQUEST_INSTALL_PACKAGES");
        return cachePermission != null ? cachePermission : putCachePermission(new RequestInstallPackagesPermission());
    }

    public static IPermission getScheduleExactAlarmPermission() {
        IPermission cachePermission = getCachePermission("android.permission.SCHEDULE_EXACT_ALARM");
        return cachePermission != null ? cachePermission : putCachePermission(new ScheduleExactAlarmPermission());
    }

    public static IPermission getSendSmsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.SEND_SMS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.SEND_SMS, PermissionGroups.SMS, 23));
    }

    public static IPermission getSystemAlertWindowPermission() {
        IPermission cachePermission = getCachePermission("android.permission.SYSTEM_ALERT_WINDOW");
        return cachePermission != null ? cachePermission : putCachePermission(new SystemAlertWindowPermission());
    }

    public static IPermission getUseFullScreenIntentPermission() {
        IPermission cachePermission = getCachePermission("android.permission.USE_FULL_SCREEN_INTENT");
        return cachePermission != null ? cachePermission : putCachePermission(new UseFullScreenIntentPermission());
    }

    public static IPermission getUseSipPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.USE_SIP);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.USE_SIP, PermissionGroups.PHONE, 23));
    }

    public static IPermission getWriteActiveCaloriesBurnedPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_ACTIVE_CALORIES_BURNED);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_ACTIVE_CALORIES_BURNED, 34));
    }

    public static IPermission getWriteActivityIntensityPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_ACTIVITY_INTENSITY);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_ACTIVITY_INTENSITY, 36));
    }

    public static IPermission getWriteBasalBodyTemperaturePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_BASAL_BODY_TEMPERATURE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_BASAL_BODY_TEMPERATURE, 34));
    }

    public static IPermission getWriteBasalMetabolicRatePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_BASAL_METABOLIC_RATE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_BASAL_METABOLIC_RATE, 34));
    }

    public static IPermission getWriteBloodGlucosePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_BLOOD_GLUCOSE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_BLOOD_GLUCOSE, 34));
    }

    public static IPermission getWriteBloodPressurePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_BLOOD_PRESSURE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_BLOOD_PRESSURE, 34));
    }

    public static IPermission getWriteBodyFatPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_BODY_FAT);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_BODY_FAT, 34));
    }

    public static IPermission getWriteBodyTemperaturePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_BODY_TEMPERATURE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_BODY_TEMPERATURE, 34));
    }

    public static IPermission getWriteBodyWaterMassPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_BODY_WATER_MASS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_BODY_WATER_MASS, 34));
    }

    public static IPermission getWriteBoneMassPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_BONE_MASS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_BONE_MASS, 34));
    }

    public static IPermission getWriteCalendarPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_CALENDAR);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.WRITE_CALENDAR, PermissionGroups.CALENDAR, 23));
    }

    public static IPermission getWriteCallLogPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_CALL_LOG);
        if (cachePermission != null) {
            return cachePermission;
        }
        return putCachePermission(new StandardDangerousPermission(PermissionNames.WRITE_CALL_LOG, PermissionVersion.isAndroid9() ? PermissionGroups.CALL_LOG : PermissionGroups.PHONE, 23));
    }

    public static IPermission getWriteCervicalMucusPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_CERVICAL_MUCUS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_CERVICAL_MUCUS, 34));
    }

    public static IPermission getWriteContactsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_CONTACTS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardDangerousPermission(PermissionNames.WRITE_CONTACTS, PermissionGroups.CONTACTS, 23));
    }

    public static IPermission getWriteDistancePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_DISTANCE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_DISTANCE, 34));
    }

    public static IPermission getWriteElevationGainedPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_ELEVATION_GAINED);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_ELEVATION_GAINED, 34));
    }

    public static IPermission getWriteExercisePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_EXERCISE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_EXERCISE, 34));
    }

    public static IPermission getWriteExerciseRoutePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_EXERCISE_ROUTE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_EXERCISE_ROUTE, 35));
    }

    public static IPermission getWriteExternalStoragePermission() {
        IPermission cachePermission = getCachePermission("android.permission.WRITE_EXTERNAL_STORAGE");
        return cachePermission != null ? cachePermission : putCachePermission(new WriteExternalStoragePermission());
    }

    public static IPermission getWriteFloorsClimbedPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_FLOORS_CLIMBED);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_FLOORS_CLIMBED, 34));
    }

    public static IPermission getWriteHeartRatePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_HEART_RATE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_HEART_RATE, 34));
    }

    public static IPermission getWriteHeartRateVariabilityPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_HEART_RATE_VARIABILITY);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_HEART_RATE_VARIABILITY, 34));
    }

    public static IPermission getWriteHeightPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_HEIGHT);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_HEIGHT, 34));
    }

    public static IPermission getWriteHydrationPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_HYDRATION);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_HYDRATION, 34));
    }

    public static IPermission getWriteIntermenstrualBleedingPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_INTERMENSTRUAL_BLEEDING);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_INTERMENSTRUAL_BLEEDING, 34));
    }

    public static IPermission getWriteLeanBodyMassPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_LEAN_BODY_MASS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_LEAN_BODY_MASS, 34));
    }

    public static IPermission getWriteMedicalDataPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_MEDICAL_DATA);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardHealthRecordsPermission(PermissionNames.WRITE_MEDICAL_DATA, 36));
    }

    public static IPermission getWriteMenstruationPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_MENSTRUATION);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_MENSTRUATION, 34));
    }

    public static IPermission getWriteMindfulnessPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_MINDFULNESS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_MINDFULNESS, 36));
    }

    public static IPermission getWriteNutritionPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_NUTRITION);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_NUTRITION, 34));
    }

    public static IPermission getWriteOvulationTestPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_OVULATION_TEST);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_OVULATION_TEST, 34));
    }

    public static IPermission getWriteOxygenSaturationPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_OXYGEN_SATURATION);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_OXYGEN_SATURATION, 34));
    }

    public static IPermission getWritePlannedExercisePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_PLANNED_EXERCISE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_PLANNED_EXERCISE, 35));
    }

    public static IPermission getWritePowerPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_POWER);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_POWER, 34));
    }

    public static IPermission getWriteRespiratoryRatePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_RESPIRATORY_RATE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_RESPIRATORY_RATE, 34));
    }

    public static IPermission getWriteRestingHeartRatePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_RESTING_HEART_RATE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_RESTING_HEART_RATE, 34));
    }

    public static IPermission getWriteSettingsPermission() {
        IPermission cachePermission = getCachePermission("android.permission.WRITE_SETTINGS");
        return cachePermission != null ? cachePermission : putCachePermission(new WriteSettingsPermission());
    }

    public static IPermission getWriteSexualActivityPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_SEXUAL_ACTIVITY);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_SEXUAL_ACTIVITY, 34));
    }

    public static IPermission getWriteSkinTemperaturePermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_SKIN_TEMPERATURE);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_SKIN_TEMPERATURE, 35));
    }

    public static IPermission getWriteSleepPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_SLEEP);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_SLEEP, 34));
    }

    public static IPermission getWriteSpeedPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_SPEED);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_SPEED, 34));
    }

    public static IPermission getWriteStepsPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_STEPS);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_STEPS, 34));
    }

    public static IPermission getWriteTotalCaloriesBurnedPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_TOTAL_CALORIES_BURNED);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_TOTAL_CALORIES_BURNED, 34));
    }

    public static IPermission getWriteVo2MaxPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_VO2_MAX);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_VO2_MAX, 34));
    }

    public static IPermission getWriteWeightPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_WEIGHT);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_WEIGHT, 34));
    }

    public static IPermission getWriteWheelchairPushesPermission() {
        IPermission cachePermission = getCachePermission(PermissionNames.WRITE_WHEELCHAIR_PUSHES);
        return cachePermission != null ? cachePermission : putCachePermission(new StandardFitnessAndWellnessDataPermission(PermissionNames.WRITE_WHEELCHAIR_PUSHES, 34));
    }

    private static IPermission putCachePermission(IPermission iPermission) {
        PERMISSION_CACHE_MAP.c(iPermission.getPermissionName(), iPermission);
        return iPermission;
    }

    public static IPermission getBindDeviceAdminPermission(Class<? extends DeviceAdminReceiver> cls) {
        return new BindDeviceAdminPermission(cls, (String) null);
    }

    public static IPermission getNotificationServicePermission() {
        IPermission cachePermission = getCachePermission("android.permission.NOTIFICATION_SERVICE");
        return cachePermission != null ? cachePermission : putCachePermission(new NotificationServicePermission());
    }
}
