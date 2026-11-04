package com.yunpan.appmanage.db;

import java.util.List;

/* loaded from: classes.dex */
public interface AppDao {
    void deleteAll();

    void deletePackageName(String str);

    AppBean get_appBean(String str);

    List<AppBean> get_appBean(int i10);

    AppBean get_appBean_name(String str);

    List<AppBean> get_app_NoCanStart();

    List<AppBean> get_app_all();

    List<AppBean> get_app_all_order();

    List<AppBean> get_app_canStart();

    List<AppBean> get_app_canStart_noUnInstall_noDisable();

    List<AppBean> get_app_disable();

    List<AppBean> get_app_hide();

    List<AppBean> get_app_noCanStart_noHide_noUnInstall_noDisable();

    List<AppBean> get_app_noHide_noUnInstall_noDisable();

    List<AppBean> get_app_storage();

    List<AppBean> get_app_system();

    List<AppBean> get_app_system_canStart_noHide_noUnInstall_noDisable();

    List<AppBean> get_app_unInstall();

    List<AppBean> get_app_unInstallHashDate();

    List<AppBean> get_app_user();

    List<AppBean> get_app_user_canStart_noHide_noUnInstall_noDisable();

    long insert(AppBean appBean);

    AppBean isAppDir(String str);

    List<AppBean> search_name(String str);

    List<AppBean> search_pack(String str);
}
