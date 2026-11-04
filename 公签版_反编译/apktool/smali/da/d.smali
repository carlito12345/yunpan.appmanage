.class public final Lda/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/base/AppStart;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/base/AppStart;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lda/d;->a:Lcom/yunpan/appmanage/base/AppStart;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    invoke-virtual {p1}, Lwa/u;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lda/d;->a:Lcom/yunpan/appmanage/base/AppStart;

    .line 2
    .line 3
    iget v0, p1, Lcom/yunpan/appmanage/base/AppStart;->f:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    iput v0, p1, Lcom/yunpan/appmanage/base/AppStart;->f:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_5

    .line 10
    .line 11
    iget-boolean v0, p1, Lcom/yunpan/appmanage/base/AppStart;->g:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p1, Lcom/yunpan/appmanage/base/AppStart;->g:Z

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    :try_start_0
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 20
    .line 21
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 22
    .line 23
    iget-object v0, p1, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb1:Lce/x0;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v0, v1, Lce/x0;->a:Lce/t0;

    .line 33
    .line 34
    invoke-virtual {v0}, Lce/t0;->b()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p1, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 38
    .line 39
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb1:Lce/x0;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb2:Lvd/x;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lvd/x;->close()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->file_smb2:Lvd/s;

    .line 52
    .line 53
    invoke-virtual {v0}, Lvd/s;->close()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p1, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 57
    .line 58
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->file_smb2:Lvd/s;

    .line 59
    .line 60
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb2:Lvd/x;

    .line 61
    .line 62
    :cond_2
    :goto_0
    iput-object v2, p1, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    :catch_0
    :cond_3
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 65
    .line 66
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 67
    .line 68
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->c0:Z

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    :cond_4
    sget-object p1, Lma/h;->a:Lma/i;

    .line 76
    .line 77
    iget-boolean v0, p1, Lma/i;->f:Z

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    iget-object p1, p1, Lma/i;->h:Lma/f;

    .line 82
    .line 83
    const/4 v0, 0x2

    .line 84
    const-wide/16 v1, 0x4a4

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lda/d;->a:Lcom/yunpan/appmanage/base/AppStart;

    .line 2
    .line 3
    iget v0, p1, Lcom/yunpan/appmanage/base/AppStart;->f:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    iput v0, p1, Lcom/yunpan/appmanage/base/AppStart;->f:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 12
    .line 13
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 14
    .line 15
    iput-boolean v1, p1, Lcom/yunpan/appmanage/util/k;->c0:Z

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
