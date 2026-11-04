.class public final synthetic Lvb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/carsdk/k0;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/carsdk/k0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvb/e;->a:Lcom/yunpan/appmanage/carsdk/k0;

    return-void
.end method


# virtual methods
.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 p2, 0x9

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iget-object v1, p0, Lvb/e;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 9
    .line 10
    if-eq p1, p2, :cond_1

    .line 11
    .line 12
    const/16 p2, 0xa

    .line 13
    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-boolean v0, v1, Lcom/yunpan/appmanage/carsdk/k0;->a:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v1, Lcom/yunpan/appmanage/carsdk/k0;->a:Z

    .line 22
    .line 23
    :goto_0
    return v0
.end method
