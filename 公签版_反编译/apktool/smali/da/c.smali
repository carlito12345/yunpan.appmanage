.class public final Lda/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/jessyan/autosize/onAdaptListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onAdaptAfter(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdaptBefore(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lme/jessyan/autosize/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;)[I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lme/jessyan/autosize/AutoSizeConfig;->setScreenWidth(I)Lme/jessyan/autosize/AutoSizeConfig;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p2}, Lme/jessyan/autosize/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;)[I

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const/4 v0, 0x1

    .line 24
    aget p2, p2, v0

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lme/jessyan/autosize/AutoSizeConfig;->setScreenHeight(I)Lme/jessyan/autosize/AutoSizeConfig;

    .line 27
    .line 28
    .line 29
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 30
    .line 31
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenWidth()I

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenHeight()I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    return-void
.end method
