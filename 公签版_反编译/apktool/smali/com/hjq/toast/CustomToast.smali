.class public abstract Lcom/hjq/toast/CustomToast;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/toast/config/IToast;


# instance fields
.field private mAnimationsId:I

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field private mGravity:I

.field private mHorizontalMargin:F

.field private mLongDuration:I

.field private mMessageView:Landroid/widget/TextView;

.field private mShortDuration:I

.field private mVerticalMargin:F

.field private mView:Landroid/view/View;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x1030004

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/hjq/toast/CustomToast;->mAnimationsId:I

    .line 8
    .line 9
    const/16 v0, 0x7d0

    .line 10
    .line 11
    iput v0, p0, Lcom/hjq/toast/CustomToast;->mShortDuration:I

    .line 12
    .line 13
    const/16 v0, 0xdac

    .line 14
    .line 15
    iput v0, p0, Lcom/hjq/toast/CustomToast;->mLongDuration:I

    .line 16
    .line 17
    iput-object p1, p0, Lcom/hjq/toast/CustomToast;->mContext:Landroid/content/Context;

    .line 18
    .line 19
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

.method public getAnimationsId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mAnimationsId:I

    .line 2
    .line 3
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/CustomToast;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mGravity:I

    .line 2
    .line 3
    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mHorizontalMargin:F

    .line 2
    .line 3
    return v0
.end method

.method public getLongDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mLongDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public getShortDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mShortDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mVerticalMargin:F

    .line 2
    .line 3
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/CustomToast;->mView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mXOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public setAnimationsId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hjq/toast/CustomToast;->mAnimationsId:I

    .line 2
    .line 3
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hjq/toast/CustomToast;->mDuration:I

    .line 2
    .line 3
    return-void
.end method

.method public setGravity(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hjq/toast/CustomToast;->mGravity:I

    .line 2
    .line 3
    iput p2, p0, Lcom/hjq/toast/CustomToast;->mXOffset:I

    .line 4
    .line 5
    iput p3, p0, Lcom/hjq/toast/CustomToast;->mYOffset:I

    .line 6
    .line 7
    return-void
.end method

.method public setLongDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hjq/toast/CustomToast;->mLongDuration:I

    .line 2
    .line 3
    return-void
.end method

.method public setMargin(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hjq/toast/CustomToast;->mHorizontalMargin:F

    .line 2
    .line 3
    iput p2, p0, Lcom/hjq/toast/CustomToast;->mVerticalMargin:F

    .line 4
    .line 5
    return-void
.end method

.method public setShortDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hjq/toast/CustomToast;->mShortDuration:I

    .line 2
    .line 3
    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/CustomToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hjq/toast/CustomToast;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/hjq/toast/CustomToast;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hjq/toast/CustomToast;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/hjq/toast/CustomToast;->mMessageView:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p0, p1}, Lt8/a;->a(Lcom/hjq/toast/config/IToast;Landroid/view/View;)Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/hjq/toast/CustomToast;->mMessageView:Landroid/widget/TextView;

    .line 14
    .line 15
    return-void
.end method
