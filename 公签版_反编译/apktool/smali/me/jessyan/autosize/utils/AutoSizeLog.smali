.class public Lme/jessyan/autosize/utils/AutoSizeLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidAutoSize"

.field private static debug:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    const-string v1, "you can\'t instantiate me!"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 1
    sget-boolean v0, Lme/jessyan/autosize/utils/AutoSizeLog;->debug:Z

    .line 2
    .line 3
    return v0
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lme/jessyan/autosize/utils/AutoSizeLog;->debug:Z

    .line 2
    .line 3
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
