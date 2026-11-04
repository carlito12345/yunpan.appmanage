.class public interface abstract Lcom/yunpan/appmanage/db/AppDao;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteAll()V
.end method

.method public abstract deletePackageName(Ljava/lang/String;)V
.end method

.method public abstract get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;
.end method

.method public abstract get_appBean(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;
.end method

.method public abstract get_app_NoCanStart()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_all()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_all_order()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_canStart()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_canStart_noUnInstall_noDisable()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_disable()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_hide()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_noCanStart_noHide_noUnInstall_noDisable()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_noHide_noUnInstall_noDisable()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_storage()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_system()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_system_canStart_noHide_noUnInstall_noDisable()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_unInstall()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_unInstallHashDate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_user()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get_app_user_canStart_noHide_noUnInstall_noDisable()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/yunpan/appmanage/db/AppBean;)J
.end method

.method public abstract isAppDir(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;
.end method

.method public abstract search_name(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract search_pack(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation
.end method
