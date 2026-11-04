.class public Lcom/hjq/toast/SafeToast;
.super Lcom/hjq/toast/NotificationToast;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/toast/NotificationToast;-><init>(Landroid/app/Application;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/hjq/toast/SafeToast;->hookToastTN()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private hookToastTN()V
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    .line 2
    .line 3
    const-string v1, "mTN"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v3, "mHandler"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/os/Handler;

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    instance-of v3, v1, Lcom/hjq/toast/SafeHandler;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    new-instance v3, Lcom/hjq/toast/SafeHandler;

    .line 45
    .line 46
    invoke-direct {v3, v1}, Lcom/hjq/toast/SafeHandler;-><init>(Landroid/os/Handler;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    :goto_0
    invoke-static {v0}, Lm0/h;->s(Ljava/lang/ReflectiveOperationException;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method
