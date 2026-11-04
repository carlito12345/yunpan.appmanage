.class public Lcom/hjq/toast/SystemToast;
.super Landroid/widget/Toast;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/toast/config/IToast;


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hjq/toast/SystemToast;->mApplication:Landroid/app/Application;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic findMessageView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt8/a;->a(Lcom/hjq/toast/config/IToast;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/SystemToast;->mApplication:Landroid/app/Application;

    .line 2
    .line 3
    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/SystemToast;->mMessageView:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/hjq/toast/SystemToast;->mMessageView:Landroid/widget/TextView;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lt8/a;->a(Lcom/hjq/toast/config/IToast;Landroid/view/View;)Landroid/widget/TextView;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/hjq/toast/SystemToast;->mMessageView:Landroid/widget/TextView;

    .line 15
    .line 16
    return-void
.end method
