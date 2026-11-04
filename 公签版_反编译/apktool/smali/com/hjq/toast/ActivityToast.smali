.class public Lcom/hjq/toast/ActivityToast;
.super Lcom/hjq/toast/CustomToast;
.source "SourceFile"


# instance fields
.field private final mToastImpl:Lcom/hjq/toast/ToastImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/toast/CustomToast;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hjq/toast/ToastImpl;

    .line 5
    .line 6
    invoke-direct {v0, p1, p0}, Lcom/hjq/toast/ToastImpl;-><init>(Landroid/app/Activity;Lcom/hjq/toast/CustomToast;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/hjq/toast/ActivityToast;->mToastImpl:Lcom/hjq/toast/ToastImpl;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/ActivityToast;->mToastImpl:Lcom/hjq/toast/ToastImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hjq/toast/ToastImpl;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/ActivityToast;->mToastImpl:Lcom/hjq/toast/ToastImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hjq/toast/ToastImpl;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
